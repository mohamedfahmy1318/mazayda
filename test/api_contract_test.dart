// اختبار عقد الـ API — بيشغّل **ردود حقيقية** من السيرفر على الموديلات.
//
// الملفات في `test/fixtures/` ملقوطة من `https://mazayada.findosystem.com`
// بحساب موثّق، فالاختبار بيقيس التوافق مع اللي الباك بيبعته فعلًا مش مع
// اللي إحنا فاهمينه من التوثيق.
//
// أي تغيير كاسر في الـ API (مفتاح اتشال، نوع اتغيّر، وحدة اتحوّلت) بيوقع
// واحد من دول بدل ما يظهر كصفر/null صامت في الواجهة.

import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mazayada/features/auctions/data/models/auction_list_model.dart';
import 'package:mazayada/features/auctions/data/models/auction_viewer_model.dart';
import 'package:mazayada/features/auctions/domain/entities/auction.dart';
import 'package:mazayada/features/documents/data/models/document_filter_options_model.dart';
import 'package:mazayada/features/my_auctions/domain/entities/my_auctions_result.dart';
import 'package:mazayada/features/notifications/data/models/notification_model.dart';
import 'package:mazayada/features/notifications/domain/entities/app_notification.dart';
import 'package:mazayada/features/payments/data/models/payment_models.dart';
import 'package:mazayada/features/profile/data/models/profile_model.dart';

Map<String, dynamic> _fixture(String name) {
  final raw = File('test/fixtures/$name.json').readAsStringSync();
  return jsonDecode(raw) as Map<String, dynamic>;
}

void main() {
  group('BE-15 · meta.viewer على تفاصيل المزاد', () {
    test('الأعلام الـ11 بتتقرا كلها للمستخدم المسجّل', () {
      final json = _fixture('auction_detail');
      final viewer = json['meta']['viewer'] as Map<String, dynamic>;

      final model = AuctionViewerModel.fromJson(viewer);
      final entity = model.toEntity();

      // مش بنأكّد على قيم بعينها (بيانات الحساب بتتغيّر) — بنأكّد إن كل
      // علم اتقرا من الـ JSON مش أخد الافتراضي false بالغلط.
      expect(entity.canBid, viewer['can_bid']);
      expect(entity.isParticipant, viewer['is_participant']);
      expect(entity.hasCommerceRegister, viewer['has_commerce_register']);
      expect(
        entity.commerceRegisterBlocked,
        viewer['commerce_register_blocked'],
      );
      expect(entity.hasBookAccess, viewer['has_book_access']);
      expect(entity.bookPurchased, viewer['book_purchased']);
      expect(entity.depositPaid, viewer['deposit_paid']);
      expect(entity.isWinner, viewer['is_winner']);
      expect(entity.canAppeal, viewer['can_appeal']);
      expect(entity.hasFinalPayment, viewer['has_final_payment']);
      expect(entity.existingAppeal, isNull); // existing_appeal = null
    });
  });

  group('BE-1 / BE-6 / BE-3 · AuctionListResource + MyAuctionResource', () {
    late AuctionListModel model;

    setUp(() {
      final rows = _fixture('my_auctions_all')['data'] as List;
      model = AuctionListModel.fromJson(rows.first as Map<String, dynamic>);
    });

    test('BE-1: requires_commerce_register بيتقرا (مش null)', () {
      expect(model.requiresCommerceRegister, isNotNull);
    });

    test('BE-6: final_price + closed_at بيتقروا للمزاد المقفول', () {
      final item = model.toEntity();
      expect(item.status, AuctionStatus.closed);
      expect(item.finalPrice, isNotNull);
      expect(item.finalPrice!.amount, greaterThan(0));
      expect(item.closedAt, isNotNull);
      // سعر النتيجة بياخد final_price مش current_price.
      expect(item.resultPrice.amount, item.finalPrice!.amount);
    });

    test('BE-3: حالة مشاركة المستخدم بتتقرا كلها', () {
      final item = model.toEntity();
      expect(item.myHighestBid, isNotNull);
      expect(item.isWinning, isNotNull);
      expect(item.depositPaid, isNotNull);
      expect(item.bookPurchased, isNotNull);
      expect(item.registeredAt, isNotNull);
      expect(item.hasParticipationState, isTrue);
    });

    test('مزاد مقفول بيتحسب منتهي رغم أن has_ended = false', () {
      // الباك بيرجّع has_ended=false للمزاد المقفول: عندهم معناها «الوقت
      // خلص ولسه مش CLOSED». لو اعتمدنا عليها كنا هنعتبر مزاد مقفول شغّال.
      expect(model.hasEnded, isFalse);
      expect(model.toEntity().isOver, isTrue);
    });

    test('is_winner من الباك مكسور، والاشتقاق عندنا بيصلّحه', () {
      final item = model.toEntity();
      // الباك: hasEnded() && is_winning → دايمًا false للمزاد المقفول.
      expect(item.isWinner, isFalse);
      expect(item.isWinning, isTrue);
      // إحنا بنشتقّه من is_winning + انتهاء المزاد.
      expect(item.isWinnerResolved, isTrue);
    });

    test('شارة «مزاداتي» بتقول «فزت» مش «أنت الأعلى» لمزاد مقفول', () {
      final item = model.toEntity();
      expect(badgeFor(MyAuctionTab.all, item), MyAuctionBadge.won);
      expect(badgeFor(MyAuctionTab.won, item), MyAuctionBadge.won);
    });
  });

  group('BE-3 · meta.counts', () {
    test('العدّاد بيرجّع `all` مع باقي التبويبات', () {
      final counts = _fixture('my_auctions_all')['meta']['counts'] as Map;
      expect(counts.containsKey('all'), isTrue);
      for (final tab in MyAuctionTab.values) {
        expect(
          counts.containsKey(tab.apiValue),
          isTrue,
          reason: 'التبويب ${tab.apiValue} مش موجود في meta.counts',
        );
      }
    });
  });

  group('BE-2 · نوع الإشعار', () {
    test('`type` موجود في الرد (ولو null للصفوف القديمة)', () {
      final rows = _fixture('notifications')['data'] as List;
      expect(rows, isNotEmpty);
      for (final row in rows) {
        expect((row as Map).containsKey('type'), isTrue);
      }
    });

    test('type=null بيرجع لاشتقاق التصنيف من الرابط بدل ما يكسر', () {
      final rows = _fixture('notifications')['data'] as List;
      final n = NotificationModel.fromJson(
        rows.first as Map<String, dynamic>,
      ).toEntity();

      expect(n.event, NotificationEvent.unknown);
      // الرابط بيشاور على مزاد → تصنيف المزاد + وجهة قابلة للفتح.
      expect(n.auctionId, isNotNull);
      expect(n.kind, NotificationKind.auction);
      expect(n.hasDestination, isTrue);
    });

    test('مفردات BE-2 كلها متعرَّفة — مفيش نوع بيسقط في unknown', () {
      const vocabulary = [
        'outbid',
        'auction_won',
        'auction_lost',
        'payment_confirmed',
        'payment_failed',
        'final_payment_due',
        'deposit_refunded',
        'deposit_forfeited',
        'delivery_update',
        'inspection_answered',
        'condition_book_published',
        'appeal_updated',
        'kyc_approved',
        'kyc_rejected',
        'kyc_suspended',
        'commercial_register_approved',
        'commercial_register_rejected',
      ];

      for (final type in vocabulary) {
        expect(
          NotificationEventX.fromApi(type),
          isNot(NotificationEvent.unknown),
          reason: 'النوع $type مش متعرَّف في NotificationEvent',
        );
      }
    });

    test('قرارات التوثيق ليها تصنيف ووجهة (BE-5)', () {
      AppNotification of(String type, String url) => NotificationModel(
        id: 'x',
        type: type,
        actionUrl: url,
      ).toEntity();

      final kyc = of('kyc_rejected', 'https://x.dz/citizen/kyc');
      expect(kyc.kind, NotificationKind.verificationRejected);
      expect(kyc.pointsToKyc, isTrue);
      expect(kyc.hasDestination, isTrue);

      final cr = of(
        'commercial_register_approved',
        'https://x.dz/citizen/commercial-register',
      );
      expect(cr.kind, NotificationKind.verificationApproved);
      expect(cr.pointsToCommercialRegister, isTrue);
    });
  });

  group('BE-8 · حقول التعبئة المسبقة في البروفايل', () {
    test('كل حقول فورم الـ KYC موجودة في UserResource', () {
      final json = _fixture('profile');
      const required = [
        'wilaya_id',
        'birth_date',
        'birth_place',
        'father_name',
        'mother_name',
        'mother_surname',
        'expected_income',
        'id_card_number',
        'passport_number',
        'license_number',
        'rip',
        'nif',
        'nis',
      ];
      for (final key in required) {
        expect(
          json.containsKey(key),
          isTrue,
          reason: 'الحقل $key مش موجود في /profile',
        );
      }
    });

    test('الموديل بيقراهم من غير ما يرمي', () {
      final p = ProfileModel.fromJson(_fixture('profile')).toEntity();
      expect(p.id, isNotEmpty);
      expect(p.fullName, isNotEmpty);
      // القيم نفسها ممكن تكون null لحساب لسه مكمّلش الفورم — المهم إن
      // الـ parsing عدّى.
      expect(p.kycStatus, isNotEmpty);
    });
  });

  group('BE-13 · حالة الدفع', () {
    test('gateway_ref + confirmed بيتقروا، و confirmed من السيرفر هو الحكم', () {
      final json = _fixture('payment_status');
      expect(json.containsKey('gateway_ref'), isTrue);
      expect(json.containsKey('confirmed'), isTrue);

      final result = PaymentStatusResponseModel.fromJson(json).toEntity();
      expect(result.gatewayRef, isNotNull);
      expect(result.serverConfirmed, isNotNull);
      expect(result.allConfirmed, result.serverConfirmed);
      // pollRef بيوحّد على المرجع الرسمي.
      expect(result.pollRef, result.gatewayRef);
      expect(result.payments, isNotEmpty);
    });

    test('رد قديم من غير confirmed بيرجع للحساب المحلي', () {
      final json = Map<String, dynamic>.from(_fixture('payment_status'))
        ..remove('confirmed')
        ..remove('gateway_ref');

      final result = PaymentStatusResponseModel.fromJson(json).toEntity();
      expect(result.serverConfirmed, isNull);
      expect(result.gatewayRef, isNull);
      expect(result.pollRef, result.ref); // بنرجع للـ ref اللي بعتناه
      // الحساب المحلي: الدفعة الوحيدة PENDING → مش مأكّدة.
      expect(result.allConfirmed, isFalse);
    });
  });

  group('BE-4 · خيارات فلاتر الوثائق', () {
    test('الفئات والولايات والجهات بتتقرا', () {
      final options = DocumentFilterOptionsModel.fromJson(
        _fixture('documents_filters'),
      );
      expect(options.isEmpty, isFalse);
      expect(options.categories, isNotEmpty);
      expect(options.wilayas, isNotEmpty);
      // الجهة معرّفها UUID مش رقم — أهم فرق عن الفئة/الولاية.
      expect(options.entities, isNotEmpty);
      expect(options.entities.first.id, hasLength(36));
    });

    test('رد فاضي/مشوّه ما يرميش', () {
      expect(DocumentFilterOptionsModel.fromJson({}).isEmpty, isTrue);
      expect(
        DocumentFilterOptionsModel.fromJson({
          'categories': 'ليست مصفوفة',
          'wilayas': [
            {'id': 1}, // بدون name → يتجاهل
          ],
        }).isEmpty,
        isTrue,
      );
    });
  });

  group('BE-12 · وحدة المبالغ في التقارير', () {
    test('المبالغ بقت {amount, formatted} بالدينار مش أرقام سنتيم', () {
      final json = _fixture('reports_summary');
      final summary = json['summary'] as Map<String, dynamic>;

      // الحقول المالية بقت كائنات.
      expect(summary['net_revenue'], isA<Map>());
      expect((summary['net_revenue'] as Map)['formatted'], isA<String>());

      // العدّادات فضلت أرقام عادية.
      expect(summary['txn_count'], isA<int>());
      expect(summary['failed_count'], isA<int>());

      // series.data مصفوفة أرقام بالدينار + وحدة موثّقة.
      final series = json['series'] as Map<String, dynamic>;
      expect(series['unit'], 'DZD');
      expect(series['data'], isA<List>());
    });
  });
}
