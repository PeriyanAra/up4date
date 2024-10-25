import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:up4date/presentation/common/index.dart';
import 'package:up4date/presentation/registration/models/country_info.dart';
import 'package:up4date/presentation/registration/theme/index.dart';
import 'package:up4date/presentation/registration/widgets/country_selector.dart';
import 'package:up4date/presentation/registration/widgets/phone_input.dart';
import 'package:up4date/presentation/router/auto_router.gr.dart';

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late final TextEditingController _controller;
  bool _isContinueButtonEnabled = false;
  final _phoneCode = '+ 7';

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
          onBackButtonTap: () {
            if (!context.router.canPop()) return;

            context.router.popForced();
          },
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
                      CountrySelector(
                        countryInfo: CountryInfo(
                          countryCode: 'ru',
                          phoneCode: _phoneCode,
                          name: 'Russia',
                        ),
                        onPressed: () {},
                      ),
                      WBox(
                        width: registrationScreenTheme.phoneInputLeftSpace,
                      ),
                      Expanded(
                        flex: 4,
                        child: RegistrationPhoneInput(
                          controller: _controller,
                          onChanged: _onChanged,
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
    FocusScope.of(context).unfocus();
    context.router.push(
      VerificationRoute(
        phoneNumber:
            '$_phoneCode ${_controller.text.replaceAll(RegExp(r"[()]"), "")}',
      ),
    );
  }
}
