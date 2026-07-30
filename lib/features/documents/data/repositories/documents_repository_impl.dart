import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/exceptions_mapper.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/paged.dart';
import '../../domain/entities/document.dart';
import '../../domain/entities/document_filter_options.dart';
import '../../domain/entities/document_filters.dart';
import '../../domain/repositories/documents_repository.dart';
import '../datasources/documents_remote_data_source.dart';

@LazySingleton(as: DocumentsRepository)
class DocumentsRepositoryImpl implements DocumentsRepository {
  final DocumentsRemoteDataSource remote;
  DocumentsRepositoryImpl(this.remote);

  @override
  Future<Either<Failure, Paged<UserDocument>>> getDocuments({
    required DocumentFilters filters,
    int page = 1,
  }) {
    return _guard(() async {
      final raw = await remote.getDocuments(filters, page);
      return Paged<UserDocument>(
        items: raw.items.map((m) => m.toEntity()).toList(),
        currentPage: raw.page.currentPage,
        lastPage: raw.page.lastPage,
        total: raw.page.total,
      );
    });
  }

  @override
  Future<Either<Failure, DocumentsSummary>> getSummary() {
    return _guard(() async => (await remote.getSummary()).toEntity());
  }

  @override
  Future<Either<Failure, DocumentFilterOptions>> getFilterOptions() {
    return _guard(() async => remote.getFilterOptions());
  }

  @override
  Future<Either<Failure, String>> downloadDocument({
    required String id,
    required String title,
  }) {
    return _guard(() async => remote.downloadDocument(id, title));
  }

  Future<Either<Failure, T>> _guard<T>(Future<T> Function() action) async {
    try {
      return Right(await action());
    } on UnauthorizedException catch (e) {
      return Left(Failure.unauthorized(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } on ServerException catch (e) {
      return Left(e.toFailure());
    } catch (_) {
      return const Left(Failure.unexpected());
    }
  }
}
