import 'package:flutter/material.dart';
import 'package:up4date/presentation/registration/models/country_info.dart';

class CountryFlagImage extends StatelessWidget {
  const CountryFlagImage({
    required this.country,
    required this.size,
    Key? key,
  }) : super(key: key);

  final CountryInfo country;

  final double size;

  @override
  Widget build(BuildContext context) {
    final image = Image(
      image: AssetImage(country.flagUri),
      height: size * 3,
      width: size * 4,
      fit: BoxFit.cover,
    );

    return ClipRRect(
      borderRadius: BorderRadius.circular(2.57),
      child: image,
    );
  }
}
