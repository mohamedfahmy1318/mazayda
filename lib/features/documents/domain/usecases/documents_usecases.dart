import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/paged.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/document.dart';
import '../entities/document_filter_options.dart';
import '../entities/document_filters.dart';
import '../repositories/documents_repository.dart';

part 'documents_usecases.freezed.dart';

@injectable
class GetDocuments
    implements UseCase<Paged<UserDocument>, GetDocumentsParams> {
  final DocumentsRepository repository;
  GetDocuments(this.repository);

  @override
  Future<Either<Failure, Paged<UserDocument>>> call(GetDocumentsParams p) =>
      repository.getDocuments(filters: p.filters, page: p.page);
}

@injectable
class GetDocumentsSummary implements UseCase<DocumentsSummary, NoParams> {
  final DocumentsRepository repository;
  GetDocumentsSummary(this.repository);

  @override
  Future<Either<Failure, DocumentsSummary>> call(NoParams params) =>
      repository.getSummary();
}

/// خيارات فلاتر الوثائق — مقيّدة بوثائق المستخدم (BE-4).
@injectable
class GetDocumentFilterOptions
    implements UseCase<DocumentFilterOptions, NoParams> {
  final DocumentsRepository repository;
  GetDocumentFilterOptions(this.repository);

  @override
  Future<Either<Failure, DocumentFilterOptions>> call(NoParams params) =>
      repository.getFilterOptions();
}

/// ينزّل الوثيقة ويرجّع مسارها المحلي.
@injectable
class DownloadDocument implements UseCase<String, DownloadDocumentParams> {
  final DocumentsRepository repository;
  DownloadDocument(this.repository);

  @override
  Future<Either<Failure, String>> call(DownloadDocumentParams p) =>
      repository.downloadDocument(id: p.id, title: p.title);
}

@freezed
class DownloadDocumentParams with _$DownloadDocumentParams {
  const factory DownloadDocumentParams({
    required String id,
    required String title,
  }) = _DownloadDocumentParams;
}

@freezed
class GetDocumentsParams with _$GetDocumentsParams {
  const factory GetDocumentsParams({
    @Default(DocumentFilters()) DocumentFilters filters,
    @Default(1) int page,
  }) = _GetDocumentsParams;
}
