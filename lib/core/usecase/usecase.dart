import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../errors/failures.dart';

/// كل use case بيرجّع Either<Failure, T>.
/// [T] نوع النتيجة، [Params] مدخلات الـ use case.
abstract class UseCase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

/// للـ use cases اللي مش محتاجة مدخلات.
class NoParams extends Equatable {
  const NoParams();
  @override
  List<Object?> get props => [];
}
