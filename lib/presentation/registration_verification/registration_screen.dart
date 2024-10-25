import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:up4date/presentation/common/index.dart';
import 'package:up4date/presentation/registration_verification/models/country_info.dart';
import 'package:up4date/presentation/registration_verification/theme/index.dart';
import 'package:up4date/presentation/registration_verification/widgets/country_selector.dart';
import 'package:up4date/presentation/registration_verification/widgets/phone_input.dart';

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late final TextEditingController _controller;
  bool _isContinueButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final registrationScreenTheme = RegistrationScreenTheme.of(context);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: Up4DateAppBar(
          onBackButtonTap: () => context.router.popUntil((r) => r.isFirst),
        ),
        body: Padding(
          padding: registrationScreenTheme.screenContentPadding,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'registration_title'.tr(),
                  style: registrationScreenTheme.titleTextStyle,
                ),
                Text(
                  'registration_subtitle'.tr(),
                  style: registrationScreenTheme.subtitleTextStyle,
                ),
                HBox(
                  height: registrationScreenTheme.phoneNumberSectionTopSpace,
                ),
                SizedBox(
                  height: 46.0,
                  child: Row(
                    children: [
                      Expanded(
                        child: CountrySelector(
                          countryInfo: CountryInfo(
                            countryCode: 'ru',
                            phoneCode: '7',
                            name: 'Russia',
                          ),
                          onPressed: () {},
                        ),
                      ),
                      WBox(
                        width: registrationScreenTheme.phoneInputLeftSpace,
                      ),
                      Expanded(
                        flex: 4,
                        child: RegistrationPhoneInput(
                          controller: _controller,
                          onChanged: _onChanged, // prefix: _CountrySelector(
                          //     // countryCode: 'ru',
                          //     // onPressed: _showCountrySelector,
                          //     ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: PrimaryButton(
                    text: 'continue_text'.tr(),
                    onTap:
                        _isContinueButtonEnabled ? _onContinueButtonTap : null,
                  ),
                ),
                HBox(
                  height: registrationScreenTheme.continueButtonBottomSpace,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onChanged(String value) {
    final isContinueButtonEnabled = value.length >= 15;
    if (isContinueButtonEnabled != _isContinueButtonEnabled) {
      setState(() {
        _isContinueButtonEnabled = isContinueButtonEnabled;
      });
    }
  }

  void _onContinueButtonTap() {
    context.router.replaceAll([PageRouteInfo('authenticated')]);
  }
}
