import 'package:equatable/equatable.dart';

/// الملف الشخصي — الهوية للقراءة فقط، والباقي قابل للتعديل.
class Profile extends Equatable {
  final String id;
  final String? ninMasked; // مخفي جزئيًا
  final String fullName;
  final String? email;
  final String? phone;
  final String? address;
  final String? postalCode;
  final String? profession;
  final String? wilayaName;
  final String kycStatus;

  const Profile({
    required this.id,
    this.ninMasked,
    required this.fullName,
    this.email,
    this.phone,
    this.address,
    this.postalCode,
    this.profession,
    this.wilayaName,
    this.kycStatus = 'PENDING',
  });

  bool get isVerified => kycStatus == 'VERIFIED';

  @override
  List<Object?> get props => [id, email, phone, kycStatus];
}
