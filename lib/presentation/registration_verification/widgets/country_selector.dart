import 'package:flutter/material.dart';
import 'package:up4date/presentation/common/theme/registration_screen_theme.dart';
import 'package:up4date/presentation/registration_verification/models/country_info.dart';
import 'package:up4date/presentation/registration_verification/widgets/country_flag_image.dart';

class CountrySelector extends StatelessWidget {
  const CountrySelector({
    required this.countryInfo,
    required this.onPressed,
  });

  final CountryInfo countryInfo;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final registrationScreenTheme = RegistrationScreenTheme.of(context);

    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: registrationScreenTheme.phoneNumberSectionBackgroundColor,
            ),
            child: Padding(
              padding: registrationScreenTheme.countryPickerPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CountryFlagImage(
                    country: countryInfo,
                    size: 4,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    '+ ${countryInfo.phoneCode}',
                    style: registrationScreenTheme.phoneNumberSectionTextStyle,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 8)
        ],
      ),
    );
  }
}
