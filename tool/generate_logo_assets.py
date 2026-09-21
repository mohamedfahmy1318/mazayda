#!/usr/bin/env python3
"""يولّد أصول الشعار (PNG) من شعار الويب — تعديلات العميل 18 و19.

شعار المنصة في الويب متكتب SVG جوّه الـblade مباشرة، مش ملف صورة
(`resources/views/layouts/{citizen,auth}.blade.php`). النسخة المصدر متحطّة في
`design/logo/logo.svg`، والسكربت ده بيرسم نفس الأشكال بالظبط ويصدّرها PNG
عشان Flutter و`flutter_launcher_icons` يشتغلوا بيها من غير أي حزمة SVG.

الأشكال منقولة حرفيًا من مسارات الـSVG (إحداثيات viewBox 36×36):
  - مربّع بحواف دائرية rx=8 بتدرّج قطري #1B4D3E → #2D6A4F
  - مضلّع الرمز: M10 26 L18 10 L22 18 H26 L18 26 Z
  - خط إبراز داخلي: M12 24 L18 12 L21 18 (سُمك 1.5، أطراف دائرية)

التشغيل:
    python3 tool/generate_logo_assets.py

بيطلّع:
    assets/logo/logo.png                 رمز أخضر على خلفية شفافة (للأسطح الفاتحة)
    assets/logo/logo_white.png           رمز أبيض على خلفية شفافة (للرؤوس الداكنة)
    assets/logo/app_icon.png             أيقونة النظام 1024 (مربّع كامل، بدون حواف دائرية)
    design/logo/logo_mark.png            الشعار الكامل بحواف دائرية (للعرض العام)
    assets/logo/app_icon_foreground.png  طبقة أندرويد التكيفية (رمز أبيض بهامش)
"""

import os

from PIL import Image, ImageDraw

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(ROOT, 'assets', 'logo')       # أصول بتتشحن مع التطبيق
DESIGN = os.path.join(ROOT, 'design', 'logo')    # مصدر ومخرجات للعرض فقط

# ===== ثوابت الشعار — مطابقة لـ design/logo/logo.svg =====

VIEWBOX = 36.0
CORNER_RADIUS = 8.0 / VIEWBOX          # rx=8 في viewBox 36
GRADIENT_START = (0x1B, 0x4D, 0x3E)    # أعلى-يسار
GRADIENT_END = (0x2D, 0x6A, 0x4F)      # أسفل-يمين

# مضلّع الرمز، منسوب لـ viewBox (0..1)
GLYPH = [(10, 26), (18, 10), (22, 18), (26, 18), (18, 26)]

# خط الإبراز الداخلي + سُمكه
HIGHLIGHT = [(12, 24), (18, 12), (21, 18)]
HIGHLIGHT_WIDTH = 1.5

# لون الرمز على الأسطح الفاتحة — نفس AppColors.primary في التطبيق.
PRIMARY = (0x21, 0x57, 0x44)

# نرسم بأربعة أضعاف المقاس وبعدين نصغّر — ده اللي بيدّي حواف ناعمة،
# لأن Pillow مافيهاش تنعيم حواف أصلي للمضلّعات.
SUPERSAMPLE = 4


def _scaled(points, size):
    """يحوّل إحداثيات الـviewBox لبكسلات على مقاس معيّن."""
    return [(x / VIEWBOX * size, y / VIEWBOX * size) for x, y in points]


def _glyph_bounds():
    """مستطيل الرمز المحيط في إحداثيات الـviewBox.

    الرمز بياخد 16 من 36 بس، يعني حواليه هامش كبير جوّه الـviewBox. لما
    نصدّره لوحده (من غير المربّع) لازم نقصّه على حدوده، وإلا `BrandMark`
    هيضيف هامشه فوق الهامش ده والرمز هيبان ضئيل.
    """
    xs = [x for x, _ in GLYPH]
    ys = [y for _, y in GLYPH]
    return min(xs), min(ys), max(xs), max(ys)


def _fitted(points, size, padding):
    """يحجّم الرمز على حدوده عشان يملا المساحة (مع هامش نسبي)."""
    left, top, right, bottom = _glyph_bounds()
    span = max(right - left, bottom - top)
    inner = size * (1 - 2 * padding)
    scale = inner / span
    # نوسّط المستطيل المحيط داخل المساحة.
    offset_x = (size - (right - left) * scale) / 2
    offset_y = (size - (bottom - top) * scale) / 2
    return [
        ((x - left) * scale + offset_x, (y - top) * scale + offset_y)
        for x, y in points
    ]


def _diagonal_gradient(size):
    """مربّع بتدرّج قطري من أعلى-اليسار لأسفل-اليمين (زي linearGradient)."""
    image = Image.new('RGB', (size, size))
    pixels = image.load()
    for y in range(size):
        for x in range(size):
            # نفس معادلة SVG: الإسقاط على قطر المربّع.
            t = (x + y) / (2 * (size - 1))
            pixels[x, y] = tuple(
                round(start + (end - start) * t)
                for start, end in zip(GRADIENT_START, GRADIENT_END)
            )
    return image


def _rounded_mask(size):
    """قناع المربّع ذي الحواف الدائرية."""
    mask = Image.new('L', (size, size), 0)
    ImageDraw.Draw(mask).rounded_rectangle(
        [(0, 0), (size - 1, size - 1)],
        radius=CORNER_RADIUS * size,
        fill=255,
    )
    return mask


def _draw_glyph(draw, size, color, with_highlight):
    """يرسم مضلّع الرمز وخط الإبراز."""
    draw.polygon(_scaled(GLYPH, size), fill=color)
    if not with_highlight:
        return
    width = max(1, round(HIGHLIGHT_WIDTH / VIEWBOX * size))
    points = _scaled(HIGHLIGHT, size)
    draw.line(points, fill=color, width=width, joint='curve')
    # أطراف دائرية (stroke-linecap="round") — Pillow مابتعملهاش لوحدها.
    for x, y in (points[0], points[-1]):
        r = width / 2
        draw.ellipse([x - r, y - r, x + r, y + r], fill=color)


def glyph_png(path, size, color, padding=0.0):
    """رمز مفرد اللون على خلفية شفافة، مقصوص على حدوده مع هامش اختياري."""
    big = size * SUPERSAMPLE
    canvas = Image.new('RGBA', (big, big), (0, 0, 0, 0))
    ImageDraw.Draw(canvas).polygon(
        _fitted(GLYPH, big, padding), fill=color + (255,)
    )
    canvas.resize((size, size), Image.LANCZOS).save(path)
    print(f'✓ {os.path.relpath(path, ROOT)}  ({size}×{size})')


def full_icon_png(path, size, rounded):
    """الشعار الكامل: المربّع المتدرّج + الرمز الأبيض + الإبراز.

    [rounded] لأيقونة التطبيق لازم تكون `False`: iOS وAndroid بيطبّقوا قناع
    الحواف بتاعهم على الأيقونة، فلو خبّينا حواف دائرية في الصورة نفسها
    هتتقصّ مرتين ويبان إطار غريب حوالين الأيقونة. وكمان `remove_alpha_ios`
    بيحوّل الأركان الشفافة لأبيض، فبتظهر مثلثات بيضا في الأركان.
    """
    big = size * SUPERSAMPLE
    icon = _diagonal_gradient(big).convert('RGBA')
    if rounded:
        icon.putalpha(_rounded_mask(big))

    glyph = Image.new('RGBA', (big, big), (0, 0, 0, 0))
    gd = ImageDraw.Draw(glyph)
    # نفس شفافيات الـSVG: المضلّع 0.9 وخط الإبراز 1.0.
    gd.polygon(_scaled(GLYPH, big), fill=(255, 255, 255, 230))
    _draw_glyph(gd, big, (255, 255, 255), with_highlight=True)

    icon.alpha_composite(glyph)
    icon.resize((size, size), Image.LANCZOS).save(path)
    print(f'✓ {os.path.relpath(path, ROOT)}  ({size}×{size})')


def main():
    os.makedirs(OUT, exist_ok=True)
    os.makedirs(DESIGN, exist_ok=True)

    # الرمز وحده — `BrandMark` بيحطّه جوّه لوحته الخاصة.
    glyph_png(os.path.join(OUT, 'logo.png'), 512, PRIMARY)
    glyph_png(os.path.join(OUT, 'logo_white.png'), 512, (255, 255, 255))

    # أيقونة التطبيق — مربّعة كاملة 1024 من غير حواف دائرية ولا شفافية.
    full_icon_png(os.path.join(OUT, 'app_icon.png'), 1024, rounded=False)

    # نسخة بحواف دائرية للعرض العام (متجر التطبيقات، عروض، ويب) — بتروح
    # لمجلد التصميم مش الأصول، عشان مانشحنش صورة مش مستخدمة جوّه التطبيق.
    full_icon_png(os.path.join(DESIGN, 'logo_mark.png'), 512, rounded=True)

    # طبقة أندرويد التكيفية: النظام بيقصّ الأطراف، فالرمز لازم يبقى في
    # النص وحواليه هامش واسع (~27%) عشان مايتقصّش على أي شكل جهاز.
    glyph_png(
        os.path.join(OUT, 'app_icon_foreground.png'),
        1024,
        (255, 255, 255),
        padding=0.27,
    )


if __name__ == '__main__':
    main()
