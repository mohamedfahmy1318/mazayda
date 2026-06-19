import 'package:equatable/equatable.dart';

/// قيمة مالية — الـ API بيرجّعها بالشكل {amount, formatted}.
/// amount بالدينار الكامل (مش سنتيم)، و formatted نص جاهز للعرض.
class Money extends Equatable {
  final int amount;
  final String formatted;

  const Money({required this.amount, required this.formatted});

  @override
  List<Object?> get props => [amount, formatted];
}
