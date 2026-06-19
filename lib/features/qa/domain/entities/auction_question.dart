import 'package:equatable/equatable.dart';

/// سؤال فحص — قد يكون مُجابًا أو معلّقًا (PENDING).
class AuctionQuestion extends Equatable {
  final String id;
  final String question;
  final String? answer; // null = لم يُجَب بعد
  final DateTime createdAt;

  const AuctionQuestion({
    required this.id,
    required this.question,
    this.answer,
    required this.createdAt,
  });

  bool get isAnswered => answer != null && answer!.isNotEmpty;

  @override
  List<Object?> get props => [id, answer];
}
