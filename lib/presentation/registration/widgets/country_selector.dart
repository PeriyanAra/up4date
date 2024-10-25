import 'package:flutter/material.dart';
import 'package:up4date/presentation/common/index.dart';
import 'package:up4date/presentation/registration/theme/registration_screen_theme.dart';
import 'package:up4date/presentation/registration/models/country_info.dart';
import 'package:up4date/presentation/registration/widgets/country_flag_image.dart';

class CountrySelector extends StatelessWidget {
  const CountrySelector({
    required this.countryInfo,
    required this.onPressed,
    super.key,
  });

  final CountryInfo countryInfo;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final registrationScreenTheme = RegistrationScreenTheme.of(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: registrationScreenTheme.phoneNumberSectionDecoration,
        padding: registrationScreenTheme.countryPickerPadding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CountryFlagImage(
              country: countryInfo,
              size: registrationScreenTheme.countrySelectorFlagSize,
            ),
            WBox(
              width: registrationScreenTheme.countrySelectorInsideSpace,
            ),
            Text(
              countryInfo.phoneCode,
              style: registrationScreenTheme.phoneNumberSectionTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
