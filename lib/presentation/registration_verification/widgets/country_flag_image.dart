import 'package:flutter/material.dart';
import 'package:up4date/presentation/registration_verification/theme/index.dart';
import 'package:up4date/presentation/registration_verification/models/country_info.dart';
import 'package:up4date/presentation/registration_verification/theme/index.dart';

class CountryFlagImage extends StatelessWidget {
  const CountryFlagImage({
    required this.country,
    required this.size,
    super.key,
  });

  final CountryInfo country;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: RegistrationScreenTheme.of(context)
          .phoneNumberCountryFlagBorderRadius,
      child: Image(
        image: AssetImage(country.flagUri),
        height: size * 3,
        width: size * 4,
        fit: BoxFit.cover,
      ),
    );
  }
}
