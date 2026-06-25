// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'Mazayada';

  @override
  String get navHome => 'Accueil';

  @override
  String get navMyAuctions => 'Mes enchères';

  @override
  String get navPayments => 'Paiements';

  @override
  String get navProfile => 'Profil';

  @override
  String get splashTagline => 'Plateforme Nationale des Enchères Publiques';

  @override
  String get login => 'Connexion';

  @override
  String get loginButton => 'Se connecter';

  @override
  String get register => 'Créer un compte';

  @override
  String get noAccountRegister => 'Pas de compte ? Créer un compte';

  @override
  String get ninOrEmail => 'NIN ou e-mail';

  @override
  String get password => 'Mot de passe';

  @override
  String get confirmPassword => 'Confirmer le mot de passe';

  @override
  String get nin => 'Numéro d\'identification national (NIN)';

  @override
  String get ninHint => '18 chiffres';

  @override
  String get firstName => 'Prénom';

  @override
  String get lastName => 'Nom';

  @override
  String get phone => 'Numéro de téléphone';

  @override
  String get email => 'E-mail';

  @override
  String get nextVerify => 'Suivant — Vérification';

  @override
  String get verifyEmailTitle => 'Vérification de l\'e-mail';

  @override
  String get otpHint => 'Saisissez le code à 6 chiffres envoyé à votre e-mail';

  @override
  String get confirm => 'Confirmer';

  @override
  String get resendCode => 'Renvoyer le code';

  @override
  String resendIn(int seconds) {
    return 'Renvoyer dans $seconds s';
  }

  @override
  String resendInTimer(String time) {
    return 'Renvoyer dans $time';
  }

  @override
  String get activeAuctions => 'Enchères actives';

  @override
  String get noAuctions => 'Aucune enchère pour le moment';

  @override
  String get currentPrice => 'Prix actuel';

  @override
  String get openingPrice => 'Prix de départ';

  @override
  String get highestBid => 'Meilleure offre';

  @override
  String get depositRequired => 'Caution requise';

  @override
  String bidders(int count) {
    return '$count enchérisseurs';
  }

  @override
  String get live => 'En direct';

  @override
  String get comingSoon => 'Bientôt';

  @override
  String get active => 'Actif';

  @override
  String get ended => 'Terminé';

  @override
  String get cancelled => 'Annulé';

  @override
  String get description => 'Description';

  @override
  String get auctionsTitle => 'Enchères';

  @override
  String get searchAuctionHint => 'Rechercher une enchère...';

  @override
  String get filter => 'Filtrer';

  @override
  String get filterAll => 'Tout';

  @override
  String get filterStatusActive => 'Actif';

  @override
  String get filterStatusUpcoming => 'À venir';

  @override
  String get filterStatusExtended => 'Prolongé';

  @override
  String get filterStatusClosed => 'Clôturé';

  @override
  String get auctionTypeSale => 'Vente';

  @override
  String get auctionTypeLease => 'Location';

  @override
  String auctionsCount(String count) {
    return '$count enchères';
  }

  @override
  String get clearAll => 'Tout effacer';

  @override
  String get noMoreResults => '— Plus de résultats —';

  @override
  String get noMatchingAuctions => 'Aucune enchère correspondante';

  @override
  String get tryAdjustingFilters =>
      'Essayez d\'ajuster la recherche ou les filtres';

  @override
  String get resetFilters => 'Réinitialiser les filtres';

  @override
  String get filterAuctions => 'Filtrer les enchères';

  @override
  String get type => 'Type';

  @override
  String get wilaya => 'Wilaya';

  @override
  String get clearSelection => 'Effacer la sélection';

  @override
  String get searchWilayaHint => 'Rechercher une wilaya...';

  @override
  String get wilayasLoadError => 'Impossible de charger les wilayas';

  @override
  String get noWilayaMatch => 'Aucune wilaya de ce nom';

  @override
  String get reset => 'Réinitialiser';

  @override
  String get showResults => 'Afficher les résultats';

  @override
  String get registerAndPay => 'S\'inscrire et payer';

  @override
  String get bid => 'Enchérir';

  @override
  String get liveBidding => 'Enchère en direct';

  @override
  String get bidHistory => 'Historique des offres';

  @override
  String get noBidsYet => 'Aucune offre pour l\'instant';

  @override
  String get youAreHighest => 'Vous avez la meilleure offre';

  @override
  String placeBidAmount(String amount) {
    return 'Enchérir à $amount';
  }

  @override
  String get currentHighestBid => 'Meilleure offre actuelle';

  @override
  String get currencyDzd => 'DA';

  @override
  String bidsCount(int count) {
    return '$count offres';
  }

  @override
  String get kycTitle => 'Vérification d\'identité (KYC)';

  @override
  String get kycWarning =>
      'Complétez le formulaire sous 30 jours, sinon le compte sera suspendu';

  @override
  String get requiredDocuments => 'Documents requis';

  @override
  String get personalData => 'Données personnelles';

  @override
  String get finishVerification => 'Terminer la vérification';

  @override
  String get uploadDocsFirst =>
      'Téléversez d\'abord les trois documents requis';

  @override
  String get myAuctionsActive => 'Actives';

  @override
  String get myAuctionsWon => 'Gagnées';

  @override
  String get myAuctionsLost => 'Perdues';

  @override
  String get myAuctionsUpcoming => 'À venir';

  @override
  String get notifications => 'Notifications';

  @override
  String get markAllRead => 'Tout marquer';

  @override
  String get noNotifications => 'Aucune notification';

  @override
  String get profile => 'Profil';

  @override
  String get verifiedKyc => 'Vérifié — KYC complété';

  @override
  String get changePassword => 'Changer le mot de passe';

  @override
  String get language => 'Langue';

  @override
  String get privacy => 'Confidentialité';

  @override
  String get logout => 'Déconnexion';

  @override
  String get save => 'Enregistrer';

  @override
  String get edit => 'Modifier';

  @override
  String get profession => 'Profession';

  @override
  String get address => 'Adresse';

  @override
  String get postalCode => 'Code postal';

  @override
  String get languageArabic => 'Arabe';

  @override
  String get languageFrench => 'Français';

  @override
  String get languageEnglish => 'Anglais';

  @override
  String get chooseLanguage => 'Choisir la langue';

  @override
  String get retry => 'Réessayer';

  @override
  String get errorGeneric => 'Une erreur s\'est produite, réessayez';

  @override
  String get errorNetwork => 'Vérifiez votre connexion Internet';

  @override
  String get paymentSuccess => 'Paiement réussi';

  @override
  String get paymentCancelled => 'Paiement annulé';

  @override
  String get securePayment => 'Paiement sécurisé';

  @override
  String get valRequired => 'Ce champ est requis';

  @override
  String get valEmailInvalid => 'E-mail invalide';

  @override
  String get valPasswordShort => 'Mot de passe : 12 caractères minimum';

  @override
  String get valPasswordMismatch => 'Les mots de passe ne correspondent pas';

  @override
  String get valNinInvalid => 'Le NIN doit comporter 18 chiffres';

  @override
  String get valPhoneInvalid =>
      'Numéro invalide (10 chiffres commençant par 0)';

  @override
  String get valNameShort => 'Nom trop court';

  @override
  String get offlineBanner => 'Pas de connexion Internet';

  @override
  String get backOnline => 'Connexion rétablie';

  @override
  String get appealsTitle => 'Réclamations';

  @override
  String get appealsEmpty => 'Aucune réclamation';

  @override
  String get appealSubmitted => 'Votre réclamation a été envoyée';

  @override
  String get newAppeal => 'Déposer une réclamation';

  @override
  String get newAppealTitle => 'Nouvelle réclamation';

  @override
  String get appealSubject => 'Sujet';

  @override
  String get appealSubjectHint =>
      'Ex : réclamation sur le résultat de l\'enchère';

  @override
  String get appealReason => 'Motif détaillé';

  @override
  String get appealReasonHint =>
      'Expliquez en détail le motif de la réclamation...';

  @override
  String get submitAppeal => 'Envoyer la réclamation';

  @override
  String get appealStatusPending => 'En cours d\'examen';

  @override
  String get appealStatusAnswered => 'Répondu';

  @override
  String get appealStatusRejected => 'Rejeté';
}
