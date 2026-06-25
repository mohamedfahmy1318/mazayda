import 'package:mazayada/l10n/app_localizations.dart';

/// مفاتيح فلتر الحالة بالترتيب المعروض (null = الكل).
const auctionStatusKeys = <String?>[
  null,
  'ACTIVE',
  'PUBLISHED',
  'EXTENDED',
  'CLOSED',
];

/// مفاتيح فلتر النوع (null = الكل).
const auctionTypeKeys = <String?>[null, 'SALE', 'LEASE'];

/// نص فلتر الحالة المترجم لمفتاح معيّن.
String auctionStatusFilterLabel(String? key, AppLocalizations t) =>
    switch (key) {
      null => t.filterAll,
      'ACTIVE' => t.filterStatusActive,
      'PUBLISHED' => t.filterStatusUpcoming,
      'EXTENDED' => t.filterStatusExtended,
      'CLOSED' => t.filterStatusClosed,
      _ => key,
    };

/// نص فلتر النوع المترجم لمفتاح معيّن.
String auctionTypeFilterLabel(String? key, AppLocalizations t) => switch (key) {
  null => t.filterAll,
  'SALE' => t.auctionTypeSale,
  'LEASE' => t.auctionTypeLease,
  _ => key,
};
