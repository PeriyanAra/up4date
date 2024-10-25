import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:up4date/core/di/index.dart';
import 'package:up4date/presentation/common/index.dart';
import 'package:up4date/presentation/registration_verification/bloc/registration_verification_bloc.dart';
import 'package:up4date/presentation/registration_verification/models/country_info.dart';
import 'package:up4date/presentation/registration_verification/widgets/country_selector.dart';
import 'package:up4date/presentation/registration_verification/widgets/phone_input.dart';

@RoutePage()
class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: di<RegistrationVerificationBloc>()..add(RegistrationVerificationEvent.verifyPhoneNumber(verificationCode: '111111')),
      child: Scaffold(
        appBar: Up4DateAppBar(),
        body: _RegistrationScreenContent(),
      ),
    );
  }
}

class _RegistrationScreenContent extends StatelessWidget {
  const _RegistrationScreenContent();

  @override
  Widget build(BuildContext context) {
    final registrationScreenTheme = RegistrationScreenTheme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
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
            ],
          ),
          SizedBox(
            height: 24.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                CountrySelector(
                  countryInfo: CountryInfo(
                    countryCode: 'ru',
                    phoneCode: '7',
                    name: 'Russia',
                  ),
                  onPressed: () {},
                ),
                Expanded(
                  child: RegistrationPhoneInput(
                    controller: TextEditingController(),
                    focusNode: FocusNode(),
                    isAutofocus: false,
                    // prefix: _CountrySelector(
                    //     // countryCode: 'ru',
                    //     // onPressed: _showCountrySelector,
                    //     ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
