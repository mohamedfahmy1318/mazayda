#!/usr/bin/env python3
"""يولّد أصول الشعار المشحونة مع التطبيق من ملفات العلامة — تعديلات 18 و19.

المصدر هو شعار العميل زي ما هو في الباك (`public/images/brand/`)، متنسّخ في
`design/logo/`. السكربت ده **مابيرسمش** حاجة — بيقصّ ويركّب ويحجّم بس، عشان
الشكل يفضل مطابق للويب بالظبط من غير ما نعيد بناء الشعار بالكود.

التشغيل:
    python3 tool/generate_logo_assets.py

بيطلّع:
    assets/logo/logo.png                 الرمز بالكحلي — للأسطح الفاتحة
    assets/logo/logo_white.png           الرمز بالأبيض — للأسطح الداكنة
    assets/logo/app_icon.png             أيقونة النظام 1024 (مربّع كامل)
    assets/logo/app_icon_foreground.png  طبقة أندرويد التكيفية (رمز بهامش)
"""

import os

from PIL import Image

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SRC = os.path.join(ROOT, 'design', 'logo')    # مصدر العلامة (مش بيتشحن)
OUT = os.path.join(ROOT, 'assets', 'logo')    # أصول بتتشحن مع التطبيق

# لون لوحة الأيقونة — مقروء من `icon-512.png` نفسها، ونفس القيمة متحطّة في
# `adaptive_icon_background` في pubspec عشان طبقتي أندرويد يبقوا متطابقين.
BRAND_NAVY = (0x01, 0x15, 0x2E)

# الأيقونة التكيفية في أندرويد بتتقصّ بأشكال مختلفة حسب الجهاز، فالرمز لازم
# يبقى في النص وحواليه مساحة مأمونة.
ADAPTIVE_PADDING = 0.27


def _open(name):
    return Image.open(os.path.join(SRC, name)).convert('RGBA')


def _save(image, name):
    path = os.path.join(OUT, name)
    image.save(path)
    print(f'✓ {os.path.relpath(path, ROOT)}  ({image.width}×{image.height})')


def _square(image):
    """يقصّ الصورة على محتواها ويوسّطها في مربّع شفاف."""
    image = image.crop(image.getbbox())
    side = max(image.size)
    canvas = Image.new('RGBA', (side, side), (0, 0, 0, 0))
    canvas.alpha_composite(
        image, ((side - image.width) // 2, (side - image.height) // 2)
    )
    return canvas


def mark(source, size):
    """الرمز وحده، مقصوص على حدوده — `BrandMark` بيحطّ هامشه بنفسه."""
    return _square(_open(source)).resize((size, size), Image.LANCZOS)


def app_icon(size):
    """أيقونة النظام: أيقونة العميل نفسها، بس **مربّع كامل** بدل الحواف الدائرية.

    `icon-512.png` أركانها شفافة عشان الويب. للتطبيق ده عيب: iOS وAndroid
    بيطبّقوا قناع الحواف بتاعهم، و`remove_alpha_ios` بيحوّل الشفاف لأبيض،
    فبتبان مثلثات بيضا في الأركان وحواف مقصوصة مرتين. فبنملا الأركان بنفس
    الكحلي وبنسيب المنصّة تقصّ زي ما هي عايزة.
    """
    plate = Image.new('RGBA', (size, size), BRAND_NAVY + (255,))
    plate.alpha_composite(_open('icon-512.png').resize((size, size), Image.LANCZOS))
    return plate


def adaptive_foreground(size):
    """طبقة أندرويد الأمامية: الرمز الأبيض في النص وحواليه هامش مأمون."""
    inner = round(size * (1 - 2 * ADAPTIVE_PADDING))
    canvas = Image.new('RGBA', (size, size), (0, 0, 0, 0))
    canvas.alpha_composite(mark('mark-dark.png', inner), ((size - inner) // 2,) * 2)
    return canvas


def main():
    os.makedirs(OUT, exist_ok=True)

    _save(mark('mark-light.png', 512), 'logo.png')
    _save(mark('mark-dark.png', 512), 'logo_white.png')
    _save(app_icon(1024), 'app_icon.png')
    _save(adaptive_foreground(1024), 'app_icon_foreground.png')


if __name__ == '__main__':
    main()
