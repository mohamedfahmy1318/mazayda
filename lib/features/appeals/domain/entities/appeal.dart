import 'package:equatable/equatable.dart';

/// حالة الاعتراض.
enum AppealStatus { pending, answered, rejected, unknown }

extension AppealStatusX on AppealStatus {
  static AppealStatus fromApi(String? v) => switch (v) {
    'PENDING' => AppealStatus.pending,
    'ANSWERED' => AppealStatus.answered,
    'REJECTED' => AppealStatus.rejected,
    _ => AppealStatus.unknown,
  };
}

/// اعتراض المواطن — قد يكون مرتبطًا بمزاد.
class Appeal extends Equatable {
  final String id;
  final String subject;
  final String reason;
  final String? auctionTitle;
  final AppealStatus status;
  final DateTime createdAt;

  const Appeal({
    required this.id,
    required this.subject,
    required this.reason,
    this.auctionTitle,
    required this.status,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [id, status];
}
