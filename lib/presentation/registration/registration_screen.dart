import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:up4date/presentation/common/index.dart';
import 'package:up4date/presentation/common/widgets/primary_button.dart';

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
          PrimaryButton(text: 'continue'.tr())
        ],
      ),
    );
  }
}
