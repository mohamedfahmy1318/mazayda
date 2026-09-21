import 'package:equatable/equatable.dart';
import 'money.dart';

/// جلسة مزايدة واحدة — بترقيم واضح وسعر افتتاحي خاص بيها.
///
/// المزايدة الواحدة ممكن تتعاد جدولتها أكتر من مرة لما تقفل من غير راسٍ
/// (تعديلات العميل 5 · 6 · 7 · 8 · 9 · 10). كل إعادة بتفتح **جلسة جديدة**:
/// نفس المزايدة، رقم جلسة جديد، سعر افتتاحي أقل بنسبة الخفض المحدّدة.
///
/// الأرقام دي بتيجي جاهزة من السيرفر — التطبيق مابيحسبش الترقيم ولا الخفض،
/// بس بيعرضهم.
class AuctionSession extends Equatable {
  /// رقم المزايدة اللي بتمثّل الجلسة دي — بيخلّي صفوف السجل قابلة للفتح.
  ///
  /// السيرفر بيبعته على الجلسات السابقة بس، لأن الجلسة الحالية هي الصفحة
  /// اللي المستخدم واقف عليها أصلًا.
  final String? id;

  /// تسلسل الجلسة على مستوى المزايدة: 1 للأولى، 2 لأول إعادة… (تعديل 7).
  final int round;

  /// الرقم المرجعي للجلسة نفسها — ثابت ومميّز حتى بعد الإعادة (تعديل 5).
  /// بيتعرض كما هو، فأي تنسيق بيتحدد في الباك.
  final String? code;

  final DateTime? startTime;
  final DateTime? endTime;

  /// السعر الافتتاحي للجلسة دي تحديدًا — بيقلّ مع كل إعادة (تعديل 8/9).
  final Money? openingPrice;

  /// نسبة الخفض اللي اتطبّقت على الجلسة دي مقارنة باللي قبلها (تعديل 8).
  /// `null` أو صفر للجلسة الأولى.
  final double? reductionPercent;

  /// حالة الجلسة كما يرجّعها السيرفر — CLOSED / SCHEDULED / ACTIVE…
  final String? status;

  /// نص جاهز مترجَم لنتيجة الجلسة (مثلًا «لم تُقدَّم عروض») — من السيرفر
  /// عشان مانحتفظش بجدول ترجمة محلي لكل نتيجة ممكنة.
  final String? resultLabel;

  const AuctionSession({
    required this.round,
    this.id,
    this.code,
    this.startTime,
    this.endTime,
    this.openingPrice,
    this.reductionPercent,
    this.status,
    this.resultLabel,
  });

  /// الجلسة دي ناتجة عن إعادة جدولة (مش الجلسة الأصلية).
  bool get isRescheduled => round > 1;

  @override
  List<Object?> get props => [round, code, startTime, endTime, openingPrice];
}

/// معلومات الجلسة الحالية + سجل الجلسات السابقة لنفس المزايدة.
class AuctionSessionInfo extends Equatable {
  /// الجلسة الشغّالة دلوقتي.
  final AuctionSession current;

  /// عدد مرات إعادة الجدولة (= `current.round - 1` في الحالة الطبيعية،
  /// بس بنقراه من السيرفر مباشرة عشان مانفترضش).
  final int rescheduleCount;

  /// السعر الافتتاحي الأصلي قبل أي خفض — للمقارنة في شاشة السجل (تعديل 10).
  final Money? originalOpeningPrice;

  /// الجلسات السابقة، الأحدث الأول.
  final List<AuctionSession> history;

  const AuctionSessionInfo({
    required this.current,
    this.rescheduleCount = 0,
    this.originalOpeningPrice,
    this.history = const [],
  });

  /// فيه سجل يستحق عرض قسم «سجل الجلسات».
  bool get hasHistory => history.isNotEmpty || rescheduleCount > 0;

  @override
  List<Object?> get props => [current, rescheduleCount, history];
}

/// القطاع اللي المزايدة تابعة له + نسبة الحد الأدنى للمزايدة الخاصة به.
///
/// الجهة المنظمة بتحدد القطاع وقت إنشاء الجلسة، والقطاع بيفرض نسبة أقل
/// زيادة مقبولة (تعديلات العميل 11 و12). الحد الأدنى بالدينار بييجي
/// محسوبًا من السيرفر في [Auction.minBid] — النسبة هنا **للعرض والشرح** بس،
/// عشان مانكررش قاعدة الحساب في العميل.
class AuctionSector extends Equatable {
  final String id;
  final String name;

  /// أقل نسبة زيادة مسموح بيها في القطاع ده (مثلًا 5 = ٥٪).
  final double? minIncrementPercent;

  const AuctionSector({
    required this.id,
    required this.name,
    this.minIncrementPercent,
  });

  @override
  List<Object?> get props => [id, name, minIncrementPercent];
}

/// أولوية نشر المزايدة — بتحدد ترتيب الظهور ووسم «مميّزة» في القوائم.
///
/// الجهة المنظمة بتدفع رسوم نشر أعلى مقابل الأولوية (تعديلات 13–17). التطبيق
/// مالوش علاقة بالرسوم؛ بيستهلك النتيجة بس: الترتيب بيجي من السيرفر والوسم
/// من هنا.
enum PublicationPriority { normal, priority, unknown }

extension PublicationPriorityX on PublicationPriority {
  static PublicationPriority fromApi(String? v) => switch (v) {
    'NORMAL' => PublicationPriority.normal,
    'PRIORITY' || 'FEATURED' => PublicationPriority.priority,
    _ => PublicationPriority.unknown,
  };

  /// تستحق وسم «مميّزة» في القائمة.
  bool get isFeatured => this == PublicationPriority.priority;
}
