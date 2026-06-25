import 'package:injectable/injectable.dart';
import '../repositories/auth_repository.dart';

/// يتحقق هل فيه جلسة محفوظة محليًا — تستخدمه شاشة الـ splash للتوجيه.
/// مفيش [Failure] هنا لأنه مجرد قراءة من التخزين الآمن (نجاح/فشل = موجود/مش موجود).
@injectable
class CheckSession {
  final AuthRepository repository;
  CheckSession(this.repository);

  Future<bool> call() => repository.hasSession();
}
