import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/paged.dart';
import '../entities/document.dart';
import '../entities/document_filter_options.dart';
import '../entities/document_filters.dart';

abstract class DocumentsRepository {
  Future<Either<Failure, Paged<UserDocument>>> getDocuments({
    required DocumentFilters filters,
    int page,
  });

  Future<Either<Failure, DocumentsSummary>> getSummary();

  /// خيارات فلاتر الوثائق — مقيّدة بوثائق المستخدم الحالي (BE-4).
  Future<Either<Failure, DocumentFilterOptions>> getFilterOptions();

  /// ينزّل الوثيقة **بتوكن المصادقة** ويرجّع مسار الملف المحلي.
  ///
  /// الـ endpoint محمي بـ Sanctum فمينفعش نفتحه في المتصفح مباشرة.
  /// بياخد `id` و`title` (مش كيان كامل) عشان يشتغل كمان مع مراجع الوثائق
  /// المضمّنة في المزاد — كراس الشروط ووثيقة الترسية.
  Future<Either<Failure, String>> downloadDocument({
    required String id,
    required String title,
  });
}
