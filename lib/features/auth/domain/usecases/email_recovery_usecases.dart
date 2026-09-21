import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/email_recovery.dart';
import '../repositories/auth_repository.dart';

/// بيانات طلب استرجاع البريد — تعديل العميل رقم 1.
class SubmitEmailRecoveryParams extends Equatable {
  final String nin;
  final String birthDate; // YYYY-MM-DD
  final String phone;
  final String newEmail;

  /// مسار ملف صورة السيلفي مع بطاقة الهوية على الجهاز.
  final String selfiePath;

  const SubmitEmailRecoveryParams({
    required this.nin,
    required this.birthDate,
    required this.phone,
    required this.newEmail,
    required this.selfiePath,
  });

  @override
  List<Object?> get props => [nin, birthDate, phone, newEmail, selfiePath];
}

/// تقديم طلب تغيير البريد الإلكتروني المفقود للمراجعة.
@injectable
class SubmitEmailRecovery
    implements UseCase<EmailRecoveryRequest, SubmitEmailRecoveryParams> {
  final AuthRepository repository;
  SubmitEmailRecovery(this.repository);

  @override
  Future<Either<Failure, EmailRecoveryRequest>> call(
    SubmitEmailRecoveryParams p,
  ) => repository.submitEmailRecovery(
    nin: p.nin,
    birthDate: p.birthDate,
    phone: p.phone,
    newEmail: p.newEmail,
    selfiePath: p.selfiePath,
  );
}

/// متابعة حالة آخر طلب لنفس رقم التعريف الوطني.
@injectable
class GetEmailRecoveryStatus
    implements UseCase<EmailRecoveryRequest?, String> {
  final AuthRepository repository;
  GetEmailRecoveryStatus(this.repository);

  @override
  Future<Either<Failure, EmailRecoveryRequest?>> call(String nin) =>
      repository.getEmailRecoveryStatus(nin: nin);
}
