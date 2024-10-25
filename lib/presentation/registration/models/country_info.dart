class CountryInfo {
  CountryInfo({
    required this.phoneCode,
    required this.countryCode,
    required this.name,
  }) : flagUri = 'assets/countries/${countryCode.toLowerCase()}.png';

  final String phoneCode;
  final String countryCode;
  final String name;
  final String flagUri;
}