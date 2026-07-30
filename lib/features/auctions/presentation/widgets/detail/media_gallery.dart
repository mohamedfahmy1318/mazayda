import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/widgets/app_image.dart';

/// شريط صور المزاد — تمرير أفقي مع مؤشّر للصفحة الحالية،
/// وفتح الصورة بملء الشاشة عند الضغط.
class MediaGallery extends StatefulWidget {
  final List<String> photos;
  final double height;

  const MediaGallery({super.key, required this.photos, required this.height});

  @override
  State<MediaGallery> createState() => _MediaGalleryState();
}

class _MediaGalleryState extends State<MediaGallery> {
  final _controller = PageController();
  int _index = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final photos = widget.photos;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: widget.height,
          width: double.infinity,
          child: PageView.builder(
            controller: _controller,
            itemCount: photos.length,
            onPageChanged: (i) => setState(() => _index = i),
            itemBuilder: (_, i) => GestureDetector(
              onTap: () => _openFullscreen(context, i),
              child: AppImage(
                url: photos[i],
                height: widget.height,
                width: double.infinity,
                fit: BoxFit.cover,
                fallbackIcon: Icons.gavel,
              ),
            ),
          ),
        ),
        if (photos.length > 1)
          Padding(
            padding: EdgeInsets.only(bottom: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                photos.length,
                (i) => AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  margin: EdgeInsets.symmetric(horizontal: 3.w),
                  width: i == _index ? 18.w : 6.w,
                  height: 6.h,
                  decoration: BoxDecoration(
                    color: i == _index
                        ? AppColors.white
                        : AppColors.white.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(3.r),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  void _openFullscreen(BuildContext context, int initial) {
    Navigator.of(context).push(
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (_) => _FullscreenGallery(
          photos: widget.photos,
          initialIndex: initial,
        ),
      ),
    );
  }
}

/// عرض الصور بملء الشاشة مع تكبير/تصغير.
class _FullscreenGallery extends StatelessWidget {
  final List<String> photos;
  final int initialIndex;

  const _FullscreenGallery({required this.photos, required this.initialIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: PageView.builder(
        controller: PageController(initialPage: initialIndex),
        itemCount: photos.length,
        itemBuilder: (_, i) => InteractiveViewer(
          minScale: 1,
          maxScale: 4,
          child: Center(
            child: AppImage(
              url: photos[i],
              fit: BoxFit.contain,
              fallbackIcon: Icons.image_not_supported_outlined,
            ),
          ),
        ),
      ),
    );
  }
}
