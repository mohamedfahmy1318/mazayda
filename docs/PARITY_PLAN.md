# MAZAYADA — DEFINITIVE MOBILE PARITY PLAN

**Flutter app:** `/Users/ge/Developer/mazayada` · **Backend:** `/Users/ge/Herd/mazayada`
Synthesised and de-duplicated from 12 parallel deep-reads. Facts below marked ✅ were re-verified directly against backend source during this pass.

---

## 0. Verification log (done in this pass)

| Claim | Verdict | Evidence |
|---|---|---|
| `viewer` context lives in **`meta`**, not `data` | ✅ **CONFIRMED — meta** | `AuctionController.php:164-166` → `$this->ok(new AuctionResource($auction), null, ['viewer' => …])`; `RespondsWithEnvelope::envelope()` places 3rd arg under `meta` |
| `AuctionListResource` has **no** `requires_commerce_register`, **no** `final_price`, **no** `condition`, **no** `photos` | ✅ CONFIRMED | full file read — 18 keys only |
| `AuctionListResource` **does** emit `asset_class`, `start_time`, `end_time` | ✅ CONFIRMED | same |
| `PaymentResource` key is `type` (not `payment_type`); **no** `is_confirmed`; **no** per-row `ref` | ✅ CONFIRMED | `PaymentResource.php` — 8 keys: id, type, amount, status, gateway_ref, due_at, confirmed_at, created_at |
| `NotificationResource` emits `channel` + `is_read` + `action_url`; **no** `type`, **no** `read_at` | ✅ CONFIRMED | `NotificationResource.php` — 7 keys |
| `AppealResource` emits nested `auction:{id,title}` + `status_label`; status is `publicStatus()->value` | ✅ CONFIRMED | `AppealResource.php` |
| Envelope is `{data, message, meta}`; `meta.pagination = {current_page,last_page,per_page,total,count}` | ✅ CONFIRMED | `RespondsWithEnvelope.php` |
| Backend has **no** FCM device-token registration endpoint | ✅ CONFIRMED | `grep device_token\|fcm\|push_token routes/ app/Http/Controllers/Api/` → 0 hits |
| Reverb has a separate `client` config block (public host) vs `options` (internal 127.0.0.1) | ✅ CONFIRMED | `config/broadcasting.php:53-58` (`REVERB_CLIENT_HOST/PORT/SCHEME`) |
| Production Reverb key/host | ❌ **UNVERIFIABLE HERE** — no `.env` on this machine; only `.env.example` (local dev: `127.0.0.1:8080`, `http`) |

---

## 1. NEEDS-VERIFICATION REGISTER

These are unresolved conflicts or unknowns. **Do not code against a guess — verify against a live authenticated response or ask the backend owner first.** Every one of them has a downstream task blocked on it.

| # | Item | Conflict / unknown | How to resolve | Blocks |
|---|---|---|---|---|
| V1 | **Production Reverb credentials** | Realtime report cites `REVERB_APP_KEY=zht9kylgbhi8m05h4hgc`, host `mazayada.findosystem.com:443/wss` from `scripts/manual-deploy.sh`. Confirmed only that a `client` config block exists; **no `.env` present to confirm the deployed values**, and `.env.example` uses `127.0.0.1:8080/http`. | Ask backend/devops for deployed `REVERB_APP_KEY`, `REVERB_CLIENT_HOST/PORT/SCHEME`. Better: ask them to expose these on `GET /api/v1/ping` (the web already gets them injected via `partials/ws-config.blade.php`). | W3 Reverb migration |
| V2 | **`type[]` / `status[]` array query encoding** | One report says use `ListFormat.multi`, another `ListFormat.multiCompatible`, a third says build literal `type[]` keys. Laravel reads `(array) $request->query('type', [])`, so a scalar also coerces. | Fire one live request per encoding against `/api/v1/documents?type[]=AWARD&type[]=PAYMENT_RECEIPT` and diff results. Standardise once in a shared `queryParams` helper. | Documents, Reports, Auctions filters |
| V3 | **`reports/summary` money unit** | This endpoint is `$this->ok($rawServiceArray)` with **no** API Resource → all money is **integer CENTIMES**. Every other endpoint is **whole dinars** via `FormatsMoney::money()`. Only one report covered it. | Hit `GET /api/v1/reports/summary` authenticated and compare `summary.gross_confirmed` against the sum of `reports/transactions[].amount.amount`. | Reports feature (highest bug risk in the whole plan) |
| V4 | **Gateway return URL is a WEB route** | `MockPaymentGateway::charge()` and `ChargilyGateway::charge()` build `route('payments.callback')`, which resolves to the **session-auth `/payments/callback`**, not `api.v1.payments.callback`. A mobile WebView has no session cookie. | Confirm with backend whether mobile should call the public `GET /api/v1/payments/callback?ref=&decision=` itself, or whether gateways should be given a mobile return URL. | Payments confirmation (blocker B4) |
| V5 | **`/my-auctions` `?tab=` semantics** | Reports agree items are `AuctionListResource` with `meta.counts`, but the groups are **not mutually exclusive** and `DRAFT`/`CANCELLED` appear in none. Whether `won` includes non-`CLOSED` auctions is stated once only. | Read `DashboardController::myAuctions` grouping, or hit all 4 tabs with a seeded account. | My-auctions rewrite (B6) |
| V6 | **Appeal POST auth gate** | Master checklist says the **web** route is `auth + kyc.verified`; the API reports say `POST /api/v1/auctions/{id}/appeals` is **NOT** `api.kyc` gated. | Read `routes/api.php` middleware on the appeals group. Only affects whether we pre-gate the CTA on KYC. | Appeals fix (A3) |
| V7 | **`participation` per-user state** | Mobile wants winning/outbid; the API provably returns none of it (`my_bid`, `is_winning`, `deposit_paid` absent from `/my-auctions`). | Backend decision (see §6 BE-3). Until then mobile **must not render a winning/outbid claim**. | My-auctions UI |
| V8 | **`GET /api/v1/wilayas` bare-array shape** | Confirmed bare array today (defined in `routes/web.php`, `Api\GeoController`) — the only un-enveloped endpoints besides `/api/broadcasting/auth` and binary streams. Risk: a future backend refactor wraps them. | Add a defensive parse (`res.data is List ? res.data : res.data['data']`) rather than verifying once. | KYC/profile geo pickers |

---

## 2. WAVE 0 — CROSS-CUTTING FOUNDATIONS

**Nothing else in this plan can be built correctly until these land.** They are the single root cause of ~15 separately-reported gaps.

### F1 — `ApiClient` must stop discarding the envelope · **M** · 🔴 blocks 12 items

`lib/core/network/api_client.dart` `_handle()` returns only `body['data']`. Every `meta` payload in the system is destroyed. Confirmed losses:

| Endpoint | Lost `meta` | Consequence today |
|---|---|---|
| `GET /auctions/{id}` | `meta.viewer` (11 gating booleans) | Entire CTA ladder impossible; users tap into raw 422s |
| `GET /auctions`, `/appeals`, `/documents`, `/reports/transactions`, `/auctions/{id}/questions` | `meta.pagination.{current_page,last_page,per_page,total,count}` | Fake `hasMore` via `items.length == perPage` (phantom page when total % 12 == 0); no result totals |
| `GET /my-auctions` | `meta.tab`, `meta.counts.{active,won,lost,upcoming}` | No tab count badges |
| `GET /auctions/{id}/bids` | `meta.{current_price,bid_count,status}` | Extra round-trips |
| `GET /notifications` | `meta.unread_count` | Only reachable because that one datasource bypasses `ApiClient` with raw Dio |

**Do:**
```dart
// lib/core/network/api_response.dart  (new)
class ApiResponse<T> { final T data; final String? message; final Map<String,dynamic> meta; }
class Paginated<T> { final List<T> items; final PageInfo page; }
class PageInfo { final int currentPage, lastPage, perPage, total, count;
  bool get hasMore => currentPage < lastPage; }
```
Add to `ApiClient`: `getEnvelope()`, `postEnvelope()` returning `ApiResponse<dynamic>`. **Keep** the existing `get/post/put/upload` unwrapping methods so the migration is incremental. Then migrate, in this order: auctions detail → my-auctions → appeals → notifications → documents → reports.

Also add: `delete()` and `patch()` (neither exists today; `kycDocument(type)` and `commercialRegisterDocument(type)` are shaped like delete/replace endpoints and are literally uncallable).

### F2 — Authenticated binary fetch + local file handling · **M** · 🔴 blocks Documents, CR, KYC preview, award/condition-book download

`ApiClient` exposes only `get/post/put/upload` and always JSON-decodes. Three endpoint families stream **raw binary and require the `Authorization` bearer** — so `url_launcher`/`Image.network` on the URL **401s**:
- `GET /api/v1/documents/{id}/download` → `application/pdf`, `Content-Disposition: attachment; filename="{title}.pdf"`
- `GET /api/v1/kyc/document/{type}` → raw image (`id-front|id-back|selfie-with-id|photo-biometric`)
- `GET /api/v1/commercial-register/document/{type}` → raw pdf/image (`register|tax-card`)

**Do:**
1. `ApiClient.getBytes(String path)` using `Options(responseType: ResponseType.bytes)` — bypasses envelope unwrap, keeps `AuthInterceptor` in the chain.
2. `ApiClient.download(path, savePath, {onReceiveProgress})` delegating to `_dio.download`.
3. **Verify `RetryInterceptor` does not replay a partially-streamed download** — it is installed last.
4. `pubspec.yaml`: add `path_provider`, `open_filex`, `file_picker` (CR accepts **PDF**; `image_picker` cannot select PDFs), optionally `share_plus`, and `permission_handler` for Android ≤32.
5. `lib/core/utils/file_size.dart` — port `human_filesize()` (base 1024, `<1024 → "N B"`, else KB/MB/GB/TB, 1 decimal, trailing zeros + trailing `.` trimmed, ASCII unit so it reads correctly in RTL). Needed because `documents/summary` returns raw `total_bytes` while list items get a pre-formatted `file_size_human`.

### F3 — Money-unit discipline · **S** · 🔴 100× bug class

Three different units are live on the wire. Encode this once, in code, with assertions:

| Source | Unit |
|---|---|
| `{amount, formatted}` (`FormatsMoney::money()`) — everywhere except below | **whole dinars** |
| `POST /auctions/{id}/bid` request `amount` | **whole dinars** (server ×100) |
| `GET /auctions/{id}/price` → `current_price`; `/bids` → `meta.current_price`; bid 201 → `data.current_price` | **whole dinars, bare int** (not a money object) |
| Reverb `bid.placed.new_price`, `auction.closed.final_price` | **CENTIMES** — use the sibling `new_price_dinars` / `final_price_dinars` |
| `GET /reports/summary` — *every* money field incl. `by_type[].total`, `series.data[]`, `fees.*` | **CENTIMES** ⚠️ V3 |
| `reports/transactions[].amount` | **whole dinars** (`TransactionResource` uses `FormatsMoney`) |
| `final-payment/preview` `lines[].amount`, `amount_due`, `confirmed_deposit` | **whole dinars, flat int + `formatted`** (NOT the nested money object) |

**Do:** doc-comment `lib/features/auctions/data/models/money_model.dart` as *whole dinars*; add `lib/core/utils/money.dart` with `dinarsFromCentimes(int)` and `formatDzdFromDinars(int)` (`number_format(n,0,',',' ') + ' دج'`); name every centime-typed model field `…Centimes`.

### F4 — Session / account-status handling · **M**

Three separate reported failures, one root: `AuthUserModel` keeps 6 of 26 `UserResource` fields.
- 🔴 **`GET /auth/me` crashes.** Response is `data = {"user": UserResource}`; `auth_remote_data_source.dart:61` does `AuthUserModel.fromJson(data)` → `json['id']` is null on a `required String id` → `TypeError` swallowed by `AuthRepositoryImpl._guard`'s `catch (_)`. `getCurrentUser()` **can never succeed**. Fix: `…fromJson((data as Map)['user'] as Map)`. *(Note `/profile` returns `UserResource` **directly**, unwrapped — the two shapes differ.)*
- 🔴 **Token refresh always fails.** `lib/core/network/auth_interceptor.dart:92-100` reads `res.data['data']['access_token']`; the API nests it at `data.tokens.access_token`. `_refreshToken()` always returns false → `_endSession()` → every user is force-logged-out after `access_ttl_minutes` (default 60) despite a valid 30-day refresh token. Fix by reusing the datasource's `_unwrapTokens` helper (which already tolerates both shapes) in the interceptor.
- Add `account_status`(ACTIVE|SUSPENDED|BANNED), `is_blacklisted`, `can_bid`, `is_kyc_complete`, `has_commerce_register`, `commercial_register_status`, `email_verified`, `has_secret_question`, `is_premium`, `role`, `locale`, `nin_masked`, `entity` to `AuthUserModel` + `auth_entities.dart`.
- Add a **403 + `account_inactive`** branch in `ApiClient._mapDioError` / `AuthInterceptor` → clear tokens + `SessionManager.expireSession()`.
- `AuthTokensModel`: capture `token_type`, `expires_in` (s), `refresh_expires_in` (s); persist an absolute expiry in `TokenStorage`; refresh pre-emptively in `onRequest` within ~60s of expiry.
- `CheckSession` currently only checks `tokenStorage.hasTokens` → a suspended/expired user lands on `/home` and discovers it via a random failure. Make splash call `GET /auth/me` once fixed.
- Add `/auth/password/` and `/auth/recover/` to `AuthInterceptor.isAuthFree`.

### F5 — Enum single-source-of-truth · **S**

Backend truth is `app/Enums/*.php` (wire value = UPPER_SNAKE backing string, always via `?->value`) and labels are `lang/ar/enums.php`. Three resources already ship pre-localised labels — **render them, don't re-map**: `TransactionResource.type_label`/`status_label`, `DocumentResource.type_label`, `AppealResource.status_label`.

Create `lib/core/enums/` with a tolerant `fromApi` (`unknown` fallback, never throw) for the 18 backend enums. Fix the 4 broken ones (see §3). For enums with **no** server-side label (`AuctionStatus`, `KycStatus`, `AssetClass`, `AssetCondition`, `CommercialRegisterStatus`, `InspectionQuestionStatus`, `AccountStatus`) copy the strings **verbatim from `lang/ar/enums.php`** into `app_ar.arb` — do not inline Arabic in Dart (`payment_entities.dart` labels have already drifted: `تأمين` vs backend `كفالة`, `رسوم مشاركة` vs `رسوم دخول`).

**Never mark conditionally-absent keys `required`:** `AuctionResource.lease` (LEASE only), `AuctionResource.final_price` (CLOSED + non-null only), and every `whenLoaded` relation (`category`, `wilaya`, `commune`, `entity`, `auction`) are **omitted from the JSON entirely**, not null.

---

## 3. PART A — CONTRACT FIXES TO EXISTING FEATURES

> Ordered by blast radius. A1–A7 are guaranteed-wrong-at-runtime. Every one is a small diff + `build_runner`.

### 🔴 A1 — Payments status model is wrong on 3 of 4 keys · **S**
`lib/features/payments/data/models/payment_models.dart`, `…/data/datasources/payments_remote_data_source.dart`

Real: `data = {"ref": String, "payments": [PaymentResource…]}` (an **object**, not a bare list).
Mobile expects a bare `List` of `{ref, payment_type, status, is_confirmed}` → (a) `data is List` false so the whole wrapper is parsed as *one row*; (b) key is `type` not `payment_type` → always `PaymentType.unknown`; (c) **`is_confirmed` does not exist** → `@Default(false)` makes `PaymentFlowCubit._pollConfirmed`'s `rows.every((r) => r.isConfirmed)` permanently false. **Every register/final payment reports failure even when fully paid.**

- New `PaymentStatusResponseModel {String ref; List<PaymentStatusModel> payments;}`.
- `PaymentStatusModel {id, @JsonKey(name:'type') type, MoneyModel amount, status, gateway_ref, due_at, confirmed_at, created_at}`; `isConfirmed => status == 'CONFIRMED'`.
- Poll with the `ref` returned by the **init** call (`gateway_ref`). `GET /payments/{ref}/status` matches **`gateway_ref` only** — passing the payment UUID 404s.
- Handle 404 (unknown ref / other user's ref) distinctly from a generic failure.

### 🔴 A2 — Payment confirmation never reaches the server · **M** · ⚠️ V4
`lib/features/payments/presentation/pages/payment_webview_page.dart`, `…/cubit/payment_flow_cubit.dart`

Three compounding defects:
1. `ApiConstants.paymentCallback` is `'/api/v1/payments/callback'` but gateways return to **`/payments/callback`** (no prefix) → the `contains()` check never fires; only the loose `decision=` fallback saves mock/chargily.
2. `CibWebGateway::charge()` sets `returnUrl = route('payments.callback')` with **no `ref`, no `decision`** → CIB return is undetectable.
3. The interception returns `NavigationDecision.prevent`, so the callback request is **never issued** — and even if it were, it targets the session-auth **web** route which would just bounce to `/login`. Under the mock driver (no webhook) the payment stays `PENDING` **forever**.

**Do:** detect on the path segment `/payments/callback` (host-agnostic); parse `Uri.queryParameters['ref']` and `['decision']` (default `success`); then call the **public** `GET /api/v1/payments/callback?ref=&decision=` (returns `{ref, confirmed}`, idempotent, re-verifies with the gateway server-side) **before** starting the status poll. Note the URL's `ref` is the payment UUID under chargily and the gateway ref under mock — the *callback* endpoint accepts both, the *status* endpoint accepts only `gateway_ref`. Also: under the mock driver `redirect_url` **is** the callback URL, and Android does not fire `onNavigationRequest` for the initial `loadRequest` — check the URL before loading.

### 🔴 A3 — Appeals: wrong route, wrong shape, wrong enum · **S**
`lib/features/appeals/**`

- `submitAppeal()` POSTs to `ApiConstants.appeals` (`/api/v1/appeals`) — **that route does not exist**. Only `POST /api/v1/auctions/{auction}/appeals` (`ApiConstants.submitAppeal(auctionId)`, currently unused). Body is `{subject, reason}` — **no `auction_id` key**. Make `auctionId` non-nullable through `SubmitAppealParams` → repository → datasource.
- `AppealModel` reads `auction_title` (never emitted). Real: nested `"auction": {"id","title"} | null` ✅. Add `AppealAuctionRefModel`, expose `auctionId` so the card can deep-link.
- Missing fields: `status_label` (pre-localised — **render this instead of a Dart label table**), `admin_response`, `entity_response` (both null unless terminal), `forwarded_at`, `entity_decided_at`, `resolved_at`.
- `AppealStatusX.fromApi` maps `'ANSWERED'` — **not an AppealStatus value anywhere** (it belongs to `InspectionQuestionStatus`). API emits exactly `PENDING | APPROVED | REJECTED` ✅ (`publicStatus()` collapses `FORWARDED_TO_ENTITY`/`ENTITY_APPROVED`/`ENTITY_REJECTED` → `PENDING`). Every approved appeal currently renders as `unknown`. → `{pending, approved, rejected, unknown}`.
- Client-side limits: `subject` max 255, `reason` max 2000.

### 🔴 A4 — Notifications model reads two non-existent keys · **S**
`lib/features/notifications/data/models/notification_model.dart`, `…/domain/entities/app_notification.dart`

Real keys ✅: `id, title, body, channel, is_read, action_url, created_at`.
- `type` → does not exist → `NotificationKindX.fromApi(null)` → **every** notification is `generic`; the whole icon/colour system in `notification_labels.dart` is dead code.
- `read_at` → does not exist (only `is_read`).
- `action_url` → **not parsed**, so the entire inbox is a dead end (an "you were outbid" notice cannot return you to the auction).

**Do:** parse `channel` (`PUSH|SMS|EMAIL|IN_APP` — in practice always `IN_APP` from `InAppChannel`) and `action_url`; drop `read_at`. Map `action_url` → `go_router` (`/auctions/{uuid}` → auction detail; `/citizen/appeals` → appeals) **in-app**, do not open a browser. There is **no semantic notification type on the wire** — see backend ask **BE-2**.

### 🔴 A5 — Profile model: phantom field + 20 missing fields · **S**
`lib/features/profile/data/models/profile_model.dart`, `…/domain/entities/profile.dart`

`UserResource` has **no `wilaya_name`** — location is `commune_id` (int) only, so the address row never renders. Missing: `name, first_name_fr, last_name_fr, commune_id, locale, role, account_status, account_type, is_institution, entity, commercial_register_status, has_commerce_register, email_verified, phone_verified, secret_question, has_secret_question, is_kyc_complete, can_bid, is_premium, is_blacklisted`.

The capability flags (`can_bid`, `is_kyc_complete`, `has_commerce_register`, `is_blacklisted`) are the backend's **intended client gating contract** — use them instead of `profile.dart:24`'s `isVerified => kycStatus == 'VERIFIED' || 'COMPLETE'` (**`VERIFIED` is not a backend value at all**).

Also widen `UpdateProfileParams` beyond `{phone,email,address,postalCode,profession}` to include `commune_id`, `locale`, `secret_question`, `secret_answer` (see A9, B8).

### 🔴 A6 — My-auctions is built against an imaginary shape · **M** · ⚠️ V5/V7
`lib/features/my_auctions/**`

`/my-auctions` returns **`AuctionListResource` rows** + `meta:{tab, counts}` ✅. `ParticipationModel` expects `auction_id`, `my_bid`, `is_winning`, `final_price`, `status=='PAID'` — **none exist**. Result: every "active" row renders the red *outbid* badge (even when winning), every "won" row renders *awaitingPayment* permanently, prices fall back to 0.

**Do:** delete `participation_model.dart`; decode with `AuctionListModel` (A7); read `meta.counts` for tab badges (needs F1); derive the badge **only** from real fields (`status`, `is_live`, `has_ended`, `end_time`) + the tab. **Do not claim winning/outbid** until BE-3 ships. Rebuild `participation_card.dart` to actually render `cover_photo_url` (parsed today, never displayed), status chip + live dot, `category.name`, `wilaya.name`, `current_price`, `bid_count`, countdown.

### 🔴 A7 — Split `AuctionModel` into List + Detail; drop the phantom `entry_fee` · **L**
`lib/features/auctions/data/models/auction_model.dart`, `…/domain/entities/auction.dart`

One model serves two genuinely different resources; ~30 detail keys are silently defaulted.

**Phantom:** `@JsonKey(name:'entry_fee') MoneyModel? entryFee` — `AuctionResource`'s own docblock says *"the legacy entry fee is removed"*. It is permanently the 0-dinar fallback and is rendered as a bogus `رسوم المشاركة (غير مستردة) — 0 دج` in `acknowledge_sheet.dart`. **Delete from model, entity and sheet.** Labels are also inverted vs backend copy: `deposit_amount` **is** refundable (`cost_deposit` / *"قابلة للاسترداد للخاسرين، وتُحتسب من المبلغ النهائي للفائز"*); the **book** is the non-refundable one.

**`AuctionListModel`** ← `AuctionListResource` (18 keys ✅). Add the three currently-missing: `asset_class`, `start_time`, `end_time`. (`asset_class` drives the final-payment deadline: MOVABLE/CUSTOMS = 8 days, REAL_ESTATE = 15; `start_time` is the only thing that makes the *upcoming* tab meaningful.)

**`AuctionDetailModel`** ← `AuctionResource`. Currently missing: `titles{ar,fr,en}`, `descriptions{ar,fr}`, `specifications[]{title,body,titles,bodies}`, `asset_class`, `condition`, `unit_count`, `condition_terms`, `award_terms`, `commune{id,name}`, `latitude`, `longitude`, `mayor_name`, `video_url`, `deposit_percent`, `start_time`, `end_time`, `extension_count`, `max_extensions`, `inspection{start,end,location,is_open}`, `appeal_window{days,is_open,deadline}`, `lease{duration_years,renewals}` *(key absent unless LEASE)*, `requires_newspaper_announcement`, `award_document`.

**`AuctionViewerModel`** ← `meta.viewer` ✅ (needs F1): `can_bid, is_participant, has_commerce_register, commerce_register_blocked, has_book_access, book_purchased, deposit_paid, is_winner, can_appeal, existing_appeal{id,status,status_label}, has_final_payment`.

`ConditionBookModel` captures 3 of `DocumentResource`'s 10 keys — replace with the shared `DocumentModel` (B2) for **both** `condition_book` and `award_document` (the winner's وثيقة الترسية is currently unreachable). Note the embedded refs **omit the `auction` key** (relation not loaded there).

### 🟠 A8 — KYC contract gaps · **S**
`lib/features/kyc/**`

- `KycStatusModel` parses 3 of 7 keys. Add `submitted_at`, `completed_at`, **`rejection_reason`** (a rejected user currently cannot see *why*), `has_all_documents`. Remove the phantom `documents_on_file` array. `documents` is a **map of bools keyed by slug** (`id-front`, `id-back`, `selfie-with-id`, `photo-biometric`) — already correct.
- `KycAccountStatus` has a phantom `VERIFIED` and **no `SUSPENDED`** → a suspended account falls to `unknown` and the UI gives no reason the user can't bid. → `{pending, underReview, complete, rejected, suspended, unknown}`.
- Submit payload omits `rip` (20-digit, the **refund destination**), `nif` (15), `nis` (9 or 18); `id_type` is hardcoded `'ID_CARD'` while the backend validates `Rule::enum(IdDocumentType)` = `ID_CARD|PASSPORT|LICENSE` and treats both `id_type`/`id_number` as nullable (`id_number` is `required_with:id_type`).
- 🔴 **Biometric uploads will 422.** All 4 types are picked at `imageQuality:80, maxWidth:1600` → ~200-500 KB, but `photo-biometric` is capped at **120 KB** (`setting('kyc.biometric_max_kb')`) vs 1024 KB for the rest. Use per-type picker settings (~450px / q70, matching the 35×45 mm hint) and check `File.lengthSync()` before upload. Enforce JPEG/PNG (iOS `image_picker` can return HEIC → server rejects).
- `can_submit` is parsed but never used — mirror the Blade `$ro` behaviour: disable uploads **and** the whole form under `UNDER_REVIEW`/`COMPLETE`/`SUSPENDED` (server answers 422 on upload, 403 on submit).
- Pre-fill the form from `GET /profile` (`first_name_fr, last_name_fr, address, postal_code, profession, commune_id`) — critical for a REJECTED user resubmitting one field. `GET /kyc` does **not** return these; `father_name`/`mother_name`/`mother_surname`/`rip`/`nif`/`nis` aren't on `UserResource` either → see **BE-8**.
- Formz validation to match the server: names max 100, address 255, `id_number` 30, `postal_code` `/^\d{5}$/`, `expected_income` min 0; keep submit disabled until wilaya/commune are chosen (they currently fall back to `0` → server `exists:` failure instead of a local error).

### 🟠 A9 — Auth flow contract fixes · **S** (beyond F4)
- 🔴 **Registration sends a hardcoded fake birth date.** `register_cubit.dart:89` `submit({String birthDate = '2000-01-01'})` and `register_page.dart:132` calls `cubit.submit()` with no argument → **every mobile-created account is persisted with `birth_date = 2000-01-01`**, while the server requires `date|before:today-18y` and uses it for KYC identity matching. Add a `BirthDateInput` + date picker.
- `PasswordInput` only checks `length < 12`. Production `Password::defaults()` = `min(12)->mixedCase()->numbers()->symbols()->uncompromised()` — `aaaaaaaaaaaa` passes locally then 422s. Add the rules + error cases; `uncompromised` can only surface from the server.
- Remove the stale comment/derivation in `auth_repository_impl.dart:37-38` (a real `confirmPassword` field exists since `register_page.dart:117`) — plumb it through.
- Registration is missing the **required** terms-of-use checkbox the web enforces (links to شروط الاستخدام / سياسة الخصوصية) — legal parity, and it depends on B9.

### 🟠 A10 — Bidding + Q&A contract fixes · **S**
- `PriceSnapshotModel` drops **`end_time`** — the one field that lets the polling fallback resync the countdown after an auto-extension (which is exactly when `EXTENDED` pushes `end_time` forward).
- The POST-bid 201 (`data = {bid:{…}, current_price:int dinars}`) has no model — parse it for an optimistic update.
- `QuestionModel` drops **`status`** (`PENDING|ANSWERED|REJECTED`). `AuctionQuestion.isAnswered` is derived from `answer != null`.
- 🔴 **A just-asked question can never appear.** `POST` returns `status:'PENDING'`; `GET /auctions/{id}/questions` filters to `is_public && status==ANSWERED`. `QaCubit.ask()` then calls `load()`, which provably excludes it → the user sees nothing happen. Show a persistent "submitted, awaiting an answer" state instead.
- Q&A list is `paginate(20)` with `meta.pagination` and no `per_page` override; `getQuestions` takes no page param → silently truncates.
- `CommuneModel` omits `code` (`GeoController::communes` selects `['id','code','name_ar','name_fr','postal_code']`).
- Move `GetQuestions`/`AskQuestion` out of `qa_repository.dart` and `GetMyAuctions` out of `my_auctions_repository.dart` into `domain/usecases/` (convention break; both features have an empty or missing `usecases/` dir).
- `ApiConstants.askQuestion(id)` is byte-identical to `auctionQuestions(id)` — delete.

---

## 4. PART B — NEW FEATURES

Every feature follows the `auctions` template: Freezed + json_serializable models with `toEntity()`; `@injectable` usecases; `@LazySingleton(as: Abstract)` repos/datasources; Cubit + Freezed sealed state; `Either<Failure,T>`; ARB keys in **all three** locales; `build_runner` after.

---

### B1 — Auction detail: the participation funnel · **L** · depends F1, A7
**The single largest parity gap.** Today `auction_detail_page.dart` renders cover image, category/entity tags, title, `asset_location`, current price, deposit, description, and 2 unconditional buttons. The web page has a 4-tab detail + a full CTA state machine.

`lib/features/auctions/presentation/`
```
pages/auction_detail_page.dart              (rewrite → tabbed)
widgets/detail/media_gallery.dart           photos[] + video_url, fullscreen/zoom
widgets/detail/spec_group.dart              specifications[] (localized title/body blocks)
widgets/detail/pricing_group.dart           opening/deposit+deposit_percent/book_price
widgets/detail/asset_group.dart             asset_class, condition, unit_count, requires_cr
widgets/detail/lease_group.dart             lease{duration_years,renewals} — LEASE only
widgets/detail/schedule_group.dart          start_time/end_time + countdown from end_time
widgets/detail/entity_card.dart             entity{id,name}
widgets/detail/location_card.dart           commune, mayor_name, lat/lng + maps directions
widgets/detail/inspection_block.dart        inspection{start,end,location,is_open}
widgets/detail/cost_card.dart               book price (or free) vs refundable deposit
widgets/detail/cta_ladder.dart              ← the state machine
widgets/detail/winner_block.dart            winner_alias, final_price, award download
```

**CTA ladder** (short-circuit, exact web order), driven by `meta.viewer` ✅ + `Auction`:
`guest → login` · `is_blacklisted` · `locked` · `!is_kyc_complete → /kyc` · `!can_bid (inactive)` · **`commerce_register_blocked → /commercial-register`** · `!has_book_access → buy condition book (book_price)` · `!is_participant → register & pay deposit (deposit_amount)` · `is_biddable → bid form` · `CLOSED && is_winner && !has_final_payment → final-payment preview` · `CLOSED && is_winner && has_final_payment → paid confirmation + award download` · `can_appeal → file appeal` / `existing_appeal → track`.

Also wire the two dead routes here: a **Q&A** entry (`Routes.qa`) inside the Inspection tab and an **Appeals** entry (`Routes.appeals`) in the Appeals tab. Neither is reachable today.

Bid controls (`bid_controls.dart`): quick steps are hardcoded `[50000,100000,250000]` dinars — **50× the web's** `+1 000 / +5 000 / +10 000`. On a 200 000 DZD auction the mobile minimum bid is +50 000 though the API allows +1. Add a free numeric dinar `TextField` + a `currentPrice + 1` min-bid hint.

---

### B2 — Documents library (الوثائق) · **L** · depends F1, F2
```
lib/features/documents/
├── domain/
│   ├── entities/document.dart              Document, DocumentAuctionRef, DocumentsSummary, DocumentType
│   ├── entities/document_filters.dart      mirrors App\Support\DocumentFilters
│   ├── repositories/documents_repository.dart
│   └── usecases/{get_documents,get_documents_summary,download_document}.dart
├── data/
│   ├── models/document_model.dart          id,type,type_label,title,is_public,file_size,
│   │                                       file_size_human,issued_at,download_url,verify_url,
│   │                                       auction{id,title,entity_name,wilaya_name,category_name}
│   ├── models/documents_summary_model.dart total,books,awards,receipts,total_bytes
│   ├── datasources/documents_remote_data_source.dart
│   └── repositories/documents_repository_impl.dart
└── presentation/
    ├── cubit/documents_cubit.dart          Freezed: initial|loading|loaded(items,summary,page,filters)|error
    ├── pages/documents_page.dart
    └── widgets/{summary_tiles,preset_chips,filter_sheet,document_card,grouped_list}.dart
```
- `GET /documents` params: `search`, `type[]` ⚠️V2, `preset`, `from`, `to`, `category_id`, `wilaya_id`, `entity_id`, `sort(recent|oldest|auction)`, `per_page(1-50, def 24)`, `page`. **No FormRequest → no 422 feedback**: invalid types/sorts are silently dropped and unparseable dates ignored, so validate locally (dates must be exactly `Y-m-d`).
- **Filter precedence to replicate exactly:** if `from` **or** `to` is present, `preset` is **ignored** and becomes `custom`. Clear one when the user sets the other.
- Type chips: **only** `CONDITION_BOOK | AWARD | PAYMENT_RECEIPT | DELIVERY_REPORT` — `AUCTION_REPORT` is stripped server-side and excluded from results (but the Dart enum must tolerate it).
- Grouped-by-auction view is **web-only**: request `sort=auction` and group by `auction.id` client-side, bucketing null-auction rows under *وثائق غير مرتبطة بمزاد*. Grouping is per-page, so headers repeat across infinite-scroll pages.
- Filter dropdown options: **no API source exists** (`DocumentLibraryService::filterOptions` is web-only) → BE-4; interim fallback is the global `/auctions/filters` (which has **no `entities`** key).
- `verify_url` (`/verify?doc=&sig=`, null when unsigned) is a **public HTML page** — open in `webview_flutter`; there is no JSON verify endpoint (BE-9).
- Router: `Routes.documents = '/documents'`, root-navigator full-screen; entry from Profile (the web lists الوثائق as a top-level sidebar item).
- ARB: port `lang/ar/documents.php` `lib_*` keys.

---

### B3 — Commercial Register (السجل التجاري) · **M** · depends F2 (file_picker)
Blocks participation in every `requires_commerce_register` auction — including the **condition-book purchase**, not just the deposit (`PaymentService::initiateBookPurchase` line 108 throws before `initiateRegistration`).
```
lib/features/commercial_register/
├── domain/{entities/commercial_register.dart, repositories/…, usecases/{get,submit,download_document}.dart}
├── data/{models/commercial_register_models.dart, datasources/…, repositories/…}
└── presentation/{cubit/commercial_register_cubit.dart, pages/commercial_register_page.dart,
                 widgets/{cr_status_banner,cr_form,cr_doc_tile}.dart}
```
- `GET /commercial-register` → `{status(PENDING|APPROVED|REJECTED|null), company_name, register_number, tax_number, activity_type, start_date (**Y-m-d**, not ISO8601), rejection_reason, submitted_at, reviewed_at, can_submit, is_valid, documents:{register:bool, "tax-card":bool}}`.
  ⚠️ **`"tax-card"` contains a hyphen** → `@JsonKey(name:'tax-card')` is mandatory.
- `POST /commercial-register` is **multipart even when no file changes** (text-only resubmission after rejection keeps stored scans). Field names are `register_document` / `tax_card_document` (**underscores** — different from the path slugs `register` / `tax-card`). Files required only when the corresponding `documents.*` bool is false. `start_date` must be `before_or_equal:today`. Max 2048 KB, mimes `pdf,jpg,jpeg,png`.
- `can_submit` is true for `null|PENDING|REJECTED` (PENDING **is** resubmittable); `is_valid` = `APPROVED` only. **403 on submit is a plain `{message}`** with no `errors` key (FormRequest::authorize fails when APPROVED).
- Add `commercial_register_status` + `has_commerce_register` to auth/profile models (A5), a gold **تاجر معتمد** badge next to `ProfileKycBadge`, and the auction-detail CR callout (green when eligible / amber otherwise) + spec row.
- Router `Routes.commercialRegister`, next to `Routes.kyc`; profile menu row after the KYC row.
- ⚠️ Decision emails are **mail-only** (`CommercialRegisterStatusNotification::via() == ['mail']`) → no push/in-app notice (BE-5). Interim: poll `GET /commercial-register` on app resume.

---

### B4 — Dashboard / home summary · **M** · depends A7 (reuse AuctionListModel), A4
```
lib/features/dashboard/{domain,data,presentation}/…  → GetDashboard usecase, DashboardCubit, DashboardPage
```
`GET /api/v1/dashboard` → `{stats:{active,won,total_participations,pending_payments,appeals_count,has_pending_kyc,has_pending_commercial_register,upcoming_auctions}, kyc_status, commercial_register_status, won_auctions:[AuctionListResource], recent_notifications:[NotificationResource]}`.

The web renders only 3 of the 8 stats — use the rest for badges/gating. Replicate the **forced, non-dismissible KYC modal** (`<x-kyc-verify-modal/>`) shown to `PENDING`/`REJECTED` users, plus a "commercial register under review" nudge from `has_pending_commercial_register`.

**Nav impact:** either make Dashboard the home tab (moving `AuctionsPage` behind a "browse" entry) or render it as a header section above the auction list. Do **not** add a 5th bottom tab without a design decision — note `navPayments` already exists as an unused ARB key, hinting at a planned 5th tab.

⚠️ `won_auctions` items are `AuctionListResource` → **no `final_price`, no `closed_at`** ✅ (the web dashboard row shows both). Mobile can only show `current_price` + `end_time` until BE-6.

---

### B5 — Financial reports (تقاريري المالية) · **L** · ⚠️ V3 · depends F1, F3
```
lib/features/reports/
├── domain/entities/{report_summary,report_kpis,type_slice,status_slice,monthly_series,
│                    category_slice,fee_breakdown,transaction,report_filters}.dart
├── domain/usecases/{get_report_summary,get_transactions}.dart
├── data/models/…  (one per entity, Freezed)
└── presentation/{cubit/reports_cubit.dart, pages/reports_page.dart, widgets/…}
```
- 🔴 **`GET /reports/summary` money is CENTIMES** (raw service array, no Resource) while `GET /reports/transactions` `amount` is `{amount:<dinars>, formatted}`. Type summary fields as `int …Centimes`. Mixing them is the most likely bug in this feature.
- Filters (identical on both endpoints): `preset(today|7d|30d|this_month|quarter|this_year|all)`, `from`, `to`, `type[]`, `status[]`, `category_id`, `wilaya_id`, `entity_id`, `min`/`max` (**whole dinars**, server ×100), `search`, `page`. **`from`/`to` override `preset` → `custom`** (same precedence rule as documents). No validation → invalid enum values are silently dropped, `preset` typos fall back to `all`.
- `per_page` is **not configurable** on transactions (hardcoded 20). `ORDER BY created_at DESC`. Total comes from `meta.pagination.total` (F1).
- 8 KPI tiles with the **citizen** labels (`net_revenue` = *صافي ما دفعته*, not the admin *صافي الإيراد*) — strings from `lang/{ar,fr,en}/reports.php`.
- Charts need a new dep (`fl_chart`): monthly area (`series.categories` `'YYYY-MM'` × `series.data`), type donut, status donut, category bar. `by_wilaya` / `by_entity` are **always `[]`** for citizens — build no UI for them.
- Fee breakdown card renders only when `fees != null`; `hammer_fee` row hidden when 0; `@JsonKey(name:'_count')` for the leading-underscore key.
- Gotchas: `by_type` returns **only the localized `label`**, never the enum value (so type-donut colours can't be keyed deterministically — `by_status` *does* include raw `status`); `by_category` has `{name,total}` only (no id, no count → no drill-down); `summary` has no `entry_fees` key despite ENTRY_FEE feeding `net_revenue`; `pending` and `failed_count` are returned but unused by the web (parse them anyway).
- Date semantics: filtering is on `payments.created_at` in **Africa/Algiers**, never `confirmed_at`; send plain `Y-m-d` (ISO instants parse to null); `quarter`/`this_month`/`this_year` extend to the **end** of the period (include future-dated rows).
- CSV/PDF export has **no API endpoint** (web-only routes) → BE-7.
- Router `Routes.reports`; entry from Profile.

---

### B6 — Password reset + secret-question recovery · **M**
All four constants (`passwordRequest`, `passwordVerify`, `recoverReveal`, `recoverVerify`) exist in `api_constants.dart:32-36` and are referenced **nowhere**. There is no "نسيت كلمة المرور؟" link on `login_page.dart`. **A user who forgets their password is permanently locked out of the app.**

`lib/features/auth/` additions: 4 datasource methods, 4 repository methods, 4 usecases, `PasswordResetCubit` + `AccountRecoveryCubit`, 2 two-step pages, `Routes.forgotPassword` / `Routes.recoverAccount`, link on login.

- `POST /auth/password/request {nin,email}` → **always 200** with a neutral message (*"إذا كان الحساب موجوداً…"*). **Never show "account not found"** — always advance to step 2. There is **no reset-resend endpoint**: resend = re-POST this (subject to the IP limiter).
- `POST /auth/password/verify {nin,email,otp,password,password_confirmation}` → 422 errors under **`otp`**. On success the server does `revokeAll()` → **clear `TokenStorage` and route to login**; no tokens are returned.
- `POST /auth/recover/reveal {nin,email}` → `data = {"question":"<key>"}` where the key is one of `mother_maiden|first_school|birth_city|pet_name|fav_teacher` — **a key, not text**. Add all five labels to the three ARB files. This endpoint **is** enumeration-revealing (422 under `nin`), unlike password/request.
- `POST /auth/recover/verify {nin,email,secret_answer,password,password_confirmation}` → 422 under `secret_answer`. Comparison is `Hash::check` → **case- and whitespace-sensitive**. Also `revokeAll()`.
- ⚠️ **Hard dependency on B8:** `PUT /profile` is the only way to *set* the secret question, so recovery will always 422 for app-created accounts until the profile security editor ships. Ship them together.

---

### B7 — Auction browse: server-driven filters + typeahead · **M**
`ApiConstants.auctionFilters` and `auctionSearch` are dead. Mobile supports 4 of 13 query params and **hardcodes a filter vocabulary that already diverges from the server**.

- `GET /auctions/filters?wilaya=` → `{categories[{id,name}], wilayas[{id,code,name}], communes[{id,name}], statuses:["upcoming","live","closed"], types, asset_classes, conditions, sorts}` — all names pre-localized. Fetch on filter-sheet open; use `?wilaya=` for the cascading commune picker.
- `auction_filter_options.dart` hardcodes `['ACTIVE','PUBLISHED','EXTENDED','CLOSED']`; the server's canonical tokens are `upcoming|live|closed` where **`live` = ACTIVE + EXTENDED** — mobile splits one web filter into two. Raw values still work (backward-compat passthrough in `resolveStatuses`), so this is a consistency fix, not a break. **But an unknown token yields ZERO rows, not "ignored"** — never send a typo.
- Widen `GetAuctionsParams` to: `q, category, wilaya, commune, List<String> status, type, List<String> assetClass, List<String> condition, bool? requiresCr, priceMin, priceMax, sort, page, perPage`. Prices are in **dinars** on `opening_price`. `requires_cr` honours `'0'` (checked with `array_key_exists`).
- `GET /auctions/search?q=` (min 2 chars else `[]`, max 8, unpaginated) for the typeahead overlay.
- Fix `hasMore`: use `meta.pagination.current_page < last_page`, not `items.length == 12` (phantom page when total % 12 == 0).
- ⚠️ The "يتطلب سجل تجاري" chip **cannot** be rendered on list cards — `AuctionListResource` has no `requires_commerce_register` ✅ (BE-1).

---

### B8 — Profile edit + security question · **M** · depends A5
`ProfileCubit.update()` and `PUT /profile` are fully wired but **no widget ever calls them**. The profile page is read-only (info card + language switcher + logout).

Build `edit_profile_page.dart` with formz inputs mirroring `UpdateProfileRequest` (all `sometimes` — send only what changed): `phone` `/^0[567]\d{8}$/` + unique, `email` unique, `address` ≤255, `commune_id` (reuse the KYC wilaya→commune cascade), `postal_code` `/^\d{5}$/`, `profession` ≤100, `locale` `in:ar,fr,en`, `secret_question` (`Rule::in` of the 5 keys), `secret_answer` min2/max200 (**required only when picking a question and `has_secret_question == false`**; sending it empty preserves the stored hash). Map the 422 `errors` map onto per-field text.

Also: **persist locale to the account.** `LocaleCubit` writes only to secure storage, so the language never follows the user to web/other devices and server-rendered emails/notifications stay in the old language. Call `PUT /profile {"locale": …}` on change for authenticated users.

Add profile menu rows: Documents, Reports, Commercial Register, Appeals, About/Legal.

⚠️ `PUT /profile` response omits `entity` (the controller calls `$user->fresh()` without `->load('entity')`) — don't treat its absence as "no entity".

---

### B9 — Static + legal screens · **S** (content port, no API)
**Mandatory**: the web registration form requires accepting شروط الاستخدام / سياسة الخصوصية, and app stores require a reachable privacy policy. Eight screens, all static, content ported from `lang/{ar,fr,en}/{pages,legal}.php` into the ARB files: `about`, `how-it-works`, `identity-guide`, `appeals-guide`, `legal/terms`, `legal/privacy`, `legal/framework`, `legal/notices`.

`lib/features/info/presentation/pages/…` + a data-driven `LegalPage(sections:[{title, body, points[]}])` widget mirroring `<x-legal.page>`. Link identity-guide → `/kyc` and appeals-guide → `/appeals`. Entry: a "معلومات وقانوني" section in Profile.

---

### B10 — Winner final-payment preview · **M** · depends B1
`PaymentFlow.startFinalPayment` exists with **zero call sites**; `ApiConstants.finalPaymentPreview` is never called. **Winners literally cannot pay from the app.**

`GET /auctions/{id}/final-payment/preview` (403 if not winner) → `{already_paid, lines:[{key,label,amount,formatted}], confirmed_deposit, amount_due, amount_due_formatted, customs_immediate_due(null unless asset_class==CUSTOMS), due_at, deadline_days}`.
⚠️ `lines[]` use **flat `amount` + `formatted`**, *not* the nested money object. All values are whole dinars. Line keys in order: `fees.line.hammer_price`, `appraisal_fee`, `hammer_fee` *(only when >0)*, `proportional_buyer`, `work_session`, `tva`, `buyer_total`.

Show the sheet before `PaymentFlow.startFinalPayment`; entry points from the auction detail winner block **and** the my-auctions "won" tab.

---

## 5. REALTIME — PUSHER CLOUD → LARAVEL REVERB MIGRATION · **M** · ⚠️ V1

Live bidding is **100% dead** today: the client dials Pusher Cloud with a placeholder key and listens for an event that does not exist. Keep `pusher_channels_flutter ^2.2.1` — Reverb speaks the Pusher protocol.

**5.1 Connection.** `lib/core/realtime/pusher_realtime_service.dart` calls `_pusher.init(apiKey: ApiConstants.pusherKey /* 'YOUR_PUSHER_KEY' */, cluster: 'eu', …)`. Passing `cluster` makes the SDK dial `ws-eu.pusher.com` — it can **never** reach Reverb. Replace with host-based init: `host`, `wsPort`, `wssPort`, `useTLS`, `cluster: null`, plus `onConnectionStateChange`, `onError`, `onAuthorizer`.

**5.2 Constants.** Replace `pusherKey`/`pusherCluster` with `reverbAppKey`, `reverbHost`, `reverbPort`, `reverbScheme`, `reverbUseTLS` (values ⚠️ V1). **Never ship `REVERB_APP_SECRET`** — signing happens server-side. Add a `--dart-define` / debug branch for local dev (`.env.example` uses `127.0.0.1:8080` over **`ws://`**, which also needs `usesCleartextTraffic` in the debug Android manifest).

**5.3 Events.** Channel `auction.{id}` (public) is correct. `evtNewBid = 'bid.placed'` is correct. **`evtPriceUpdate = 'price.updated'` matches nothing** — zero hits across `app/`, `routes/`, `resources/`. Delete it; add:

| Event | Payload | Handling |
|---|---|---|
| `bid.placed` | `{auction_id, new_price (CENTIMES), new_price_dinars, bidder_alias, timestamp (unix s)}` | Apply directly: set `currentPrice = new_price_dinars`, `bidCount++`, prepend a `BidEntry`. **Stop re-fetching `/price` + `/bids` on every bid for every watcher.** |
| `auction.extended` | `{auction_id, new_end_time (unix s)}` | Push the countdown forward; re-enable the panel if it locked at zero. Note the unit mismatch: REST returns `end_time` as **ISO-8601**, this event as **unix seconds**. |
| `auction.closed` | `{auction_id, winner_alias, final_price (CENTIMES), final_price_dinars}` | Irreversibly lock bidding, render winner + `final_price_dinars`, stop the poll, re-fetch `GET /auctions/{id}` for the canonical closed panel. |

`BiddingState` needs `endTime`, `closedFinal`, `winnerAlias`, `finalPrice` → freezed regen.

**5.4 `isLive` lies.** `_subscribeRealtime()` emits `isLive:true` right after `subscribe()` returns, and the current impl never throws on connection failure → the pulsing "مباشر" dot shows even when nothing is connected. Drive it from `onConnectionStateChange`, and only then throttle the unconditional 10s `Timer.periodic` poll (`bidding_cubit.dart:54`).

**5.5 Frame decoding.** Reverb always sends `data` as a **JSON string**, so the `event.data is String → jsonDecode` branch is the normal path, not the exception. Its silent `catch → empty map` would look identical to a real event once payloads are actually consumed — log it. Skip `pusher:*` / `pusher_internal:subscription_succeeded` before dispatch.

**5.6 Private channels.** `POST /api/broadcasting/auth` (sanctum + `ability:access` + `active.account`) returns a **raw, un-enveloped** `{"auth": "<key>:<hmac>"}` → **must not go through `ApiClient`** (which would unwrap `data` and return null). Send the **access** token (the refresh token has ability `refresh` and 403s). The SDK prefixes private channels with `private-`.
⚠️ **But do not build private-channel UI yet:** `routes/channels.php` authorizes `auction.{id}.user.{id}` and `App.Models.User.{id}`, yet `grep PrivateChannel app/` returns **zero hits** and no notification declares a `broadcast` via() channel. There is currently **no per-user realtime signal at all** (BE-10).

**5.7 Rename** `pusher_realtime_service.dart` → `reverb_realtime_service.dart`, `PusherRealtimeService` → `ReverbRealtimeService` (keep `@LazySingleton(as: RealtimeService)`), re-run build_runner.

---

## 6. BACKEND ASKS (mobile is blocked without these)

| # | Ask | Why | Priority |
|---|---|---|---|
| **BE-1** | Add `requires_commerce_register` to `AuctionListResource` | ✅ Verified absent. The web list shows a CR-required chip; mobile provably cannot. | High |
| **BE-2** | Add a semantic `event`/`type` key to `NotificationResource` | ✅ Only `channel` (PUSH/SMS/EMAIL/IN_APP) is on the wire; `UserNotification` has no type column. The event key **is** known at `InAppChannel::send` time. Without it there is no per-notification icon/colour. | High |
| **BE-3** | Per-user state on `/my-auctions` items: `my_highest_bid{amount,formatted}`, `is_winning`, `deposit_paid`, `final_payment_status` | The endpoint returns bare auctions; `AuctionParticipant` (deposit_paid, book_purchased, registered_at, blacklisted_for_default) and the user's bid are all dropped. ⚠️V7 | High |
| **BE-4** | `GET /api/v1/documents/filters` → `{categories, wilayas, entities}` scoped to the user | `DocumentLibraryService::filterOptions()` exists but is web-only; `/auctions/filters` is global and has **no `entities`**. | Med |
| **BE-5** | Add `database` (+ push) to `CommercialRegisterStatusNotification::via()` | Currently `['mail']` only → the approve/reject decision never reaches the app. The Arabic in-app copy already exists unused (`notif_approved_title/body`). | Med |
| **BE-6** | Add `final_price` + `closed_at` to `dashboard.won_auctions` (or a dedicated resource) | The web dashboard row prints both; `AuctionListResource` has neither ✅. | Med |
| **BE-7** | `GET /api/v1/reports/export/{csv,pdf}` | The `InteractsWithFinancialReports` trait already implements both; only an API wrapper is missing. Client-side generation is infeasible (server chunks 500 rows, unbounded). | Low |
| **BE-8** | Add `father_name`, `mother_name`, `mother_surname`, `rip`, `nif`, `nis` to `UserResource` (or a `GET /kyc/prefill`) | Needed for full KYC form pre-fill on resubmission after rejection. | Med |
| **BE-9** | JSON `GET /api/v1/verify?doc=&sig=` | `/verify` is HTML-only; a camera QR verifier is a natural mobile-first feature. | Low |
| **BE-10** | Broadcast something on the private channel `auction.{id}.user.{id}` | Authorized but zero `PrivateChannel` usages → outbid/payment/KYC alerts reach mobile only via REST or FCM. | Low |
| **BE-11** | **Device-token registration endpoint** | ✅ Verified: `grep device_token\|fcm\|push_token routes/ app/Http/Controllers/Api/` → **0 hits**. `PushNotificationService.getToken()` has nowhere to send the token, so **push can never be targeted at a user**. | **High** |
| **BE-12** | Normalise `/reports/summary` money to dinars (or document it) | It is the only endpoint bypassing `FormatsMoney` — a 100× foot-gun. ⚠️V3 | Med |
| **BE-13** | Give gateways a mobile-safe return URL | `route('payments.callback')` resolves to the **session-auth web route**; mobile WebViews bounce to `/login`. ⚠️V4 | High |
| **BE-14** | Expose Reverb client config on `GET /api/v1/ping` | The web gets it injected via `partials/ws-config.blade.php`; mobile must hardcode it. ⚠️V1 | Med |

---

## 7. WAVES, EFFORT & SEQUENCING

Sizes: **S** ≤ 0.5 day · **M** 1–2 days · **L** 3–5 days.

### Wave 0 — Foundations (unblocks everything) — ~5–7 d
| Item | Size |
|---|---|
| F1 ApiClient envelope (`ApiResponse`/`Paginated`) + `delete`/`patch` | M |
| F2 Binary fetch + `path_provider`/`open_filex`/`file_picker` + `human_filesize` | M |
| F3 Money-unit utils + naming discipline | S |
| F4 Auth/session: `/auth/me` unwrap, refresh `data.tokens`, full `AuthUserModel`, 403-inactive branch, token TTLs | M |
| F5 `lib/core/enums/` + ARB label port from `lang/ar/enums.php` | S |

### Wave 1 — Stop-the-bleeding contract fixes — ~4–6 d
A1 Payment status model (S) · A2 Payment callback (M ⚠️V4) · A3 Appeals route+shape+enum (S) · A4 Notifications `channel`/`action_url` (S) · A5 Profile model (S) · A9 birth-date + password rules (S) · A10 bidding/Q&A/geo (S)

### Wave 2 — Model restructuring — ~5–7 d
A7 Split List/Detail/Viewer models, drop `entry_fee` (L) · A6 My-auctions rewrite (M ⚠️V5) · A8 KYC contract + biometric size + read-only gate (S–M) · **Reverb migration §5** (M ⚠️V1)

### Wave 3 — The funnel — ~7–10 d
B1 Auction detail + CTA ladder + tabs (L) · B3 Commercial Register (M) · B10 Final-payment preview + winner entry points (M) · B7 Browse filters + typeahead (M)

### Wave 4 — Missing modules — ~8–11 d
B2 Documents (L) · B4 Dashboard (M) · B6 Password reset + recovery (M) · B8 Profile edit + security question (M)

### Wave 5 — Reporting & polish — ~5–7 d
B5 Financial reports (L ⚠️V3) · B9 Static/legal (S) · l10n sweep: `qa_page.dart`, `acknowledge_sheet.dart`, `payment_flow.dart`, `payment_flow_cubit.dart`, `api_client.dart`, `money_model.dart` default `'0 دج'` hardcode Arabic — French/English users see Arabic through the **entire payment flow** (S) · unread-count badge on the nav via `GET /notifications/unread-count` (S) · appeal detail screen via `appealDetail(id)` (S) · pull-to-refresh + per-tab cache on my-auctions (S) · `Routes.qa`/`Routes.appeals` reachability audit (S)

**Total: ~34–48 developer-days**, excluding backend asks and any rework from the ⚠️ NEEDS-VERIFICATION items.

**Do V1–V4 in parallel with Wave 0** — V3 and V4 each invalidate a whole wave's design if they land late.

---

## 8. STANDING RULES FOR THIS WORK

1. **Never mark a `whenLoaded` or conditional key `required`** — `lease`, `final_price`, `category`, `wilaya`, `commune`, `entity`, `auction` are *omitted*, not null. Freezed tolerates missing→null on nullable fields; a `required` declaration throws.
2. **Prefer the server's `*_label`** (`type_label`, `status_label`) over a Dart label table — three resources already ship them, and the local copies have already drifted.
3. **Every `fromApi` gets an `unknown` fallback.** Never throw on an unrecognised enum value.
4. **Two endpoints are un-enveloped** (`/wilayas`, `/wilayas/{id}/communes`) plus `/api/broadcasting/auth` and all binary streams — parse defensively (`res.data is List ? … : res.data['data']`).
5. **Prefer the computed capability flags** (`can_bid`, `is_kyc_complete`, `has_commerce_register`, `is_blacklisted`, `meta.viewer.*`) over re-deriving gates from raw statuses. They are the backend's explicit client contract.
6. **Pre-gate every CTA off `meta.viewer`.** Domain rejections come back as bare 422 `{message:"<arabic>"}` with **no machine-readable code** — the user must never discover a gate by hitting one.
7. Re-run `dart run build_runner build --delete-conflicting-outputs` after every model/DI change; add ARB keys to **all three** locales then `flutter gen-l10n`.
8. Put usecases in `domain/usecases/` — `qa` and `my_auctions` currently violate this.