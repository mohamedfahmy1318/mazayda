# خط Cairo — مطلوب 4 ملفات

ضع ملفات الخط التالية في هذا المجلد (`assets/fonts/`):

```
Cairo-Regular.ttf
Cairo-Medium.ttf
Cairo-SemiBold.ttf
Cairo-Bold.ttf
```

## طريقة التحميل (الأسرع)

1. افتح: https://fonts.google.com/specimen/Cairo
2. اضغط **Get font** ثم **Download all** — ستحصل على ملف zip.
3. من داخل المجلد `static/` انسخ الأوزان الأربعة أعلاه إلى هنا.

> أو عبر الطرفية (لو عندك curl):
> ابحث عن روابط الـ ttf المباشرة من مستودع Google Fonts على GitHub
> (`google/fonts/tree/main/ofl/cairo`) وحمّل الأوزان الأربعة.

الأسماء يجب أن تطابق **حرفيًا** ما هو مكتوب في `pubspec.yaml`.
بعد وضعها: `flutter pub get` ثم `flutter run`.
