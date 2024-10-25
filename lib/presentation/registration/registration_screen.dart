import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up4date/presentation/common/index.dart';
import 'package:up4date/presentation/registration/widgets/phone_input.dart';

@RoutePage()
class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Up4DateAppBar(),
      body: _RegistrationScreenContent(),
    );
  }
}

class _RegistrationScreenContent extends StatelessWidget {
  const _RegistrationScreenContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final registrationScreenTheme = RegistrationScreenTheme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                'registration_title'.tr(),
                style: registrationScreenTheme.titleTextStyle,
              ),
              Text(
                'registration_subtitle'.tr(),
                style: registrationScreenTheme.subtitleTextStyle,
              ),
            ],
          ),
          Row(
            children: [
              _CountrySelector(
                countryInfo: CountryInfo(
                  countryCode: 'ru',
                  phoneCode: '7',
                  name: 'Russia',
                ),
                onPressed: () {},
              ),

              // PhoneInput(
              //   controller: TextEditingController(),
              //   focusNode: FocusNode(),
              //   isAutofocus: false,
              //   prefix: _CountrySelector(
              //       // countryCode: 'ru',
              //       // onPressed: _showCountrySelector,
              //       ),
              // )
              // PrimaryButton(text: 'continue'.tr(), onTap: () {},)
            ],
          ),
        ],
      ),
    );
  }
}

class _CountrySelector extends StatelessWidget {
  const _CountrySelector({
    required this.countryInfo,
    required this.onPressed,
  });

  final CountryInfo countryInfo;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final registrationScreenTheme = RegistrationScreenTheme.of(context);

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 68,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:
                    registrationScreenTheme.phoneNumberSectionBackgroundColor,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 10, 14, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    countryInfo.countryCode.isEmpty
                        ? FlutterLogo()
                        // SvgPicture.asset(
                        //     Drawables.icGlobe,
                        //     width: 20,
                        //     height: 20,
                        //   )
                        : CountryFlagImage(
                            country: countryInfo,
                            size: 20,
                          ),
                    const SizedBox(width: 4),
                    // SvgPicture.asset(Drawables.icRedesignAngleDown),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 12)
          ],
        ),
      ),
    );
  }
}

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
      height: size,
      width: size * 1.4,
      fit: BoxFit.cover,
    );

    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: image,
    );
  }
}
