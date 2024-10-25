import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:up4date/presentation/auth/theme/index.dart';
import 'package:up4date/presentation/common/index.dart';
import 'package:up4date/presentation/router/auto_router.gr.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authScreenTheme = AuthScreenTheme.of(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              Assets.authBackgroundImage,
            ),
          ),
        ),
        padding: authScreenTheme.contentPadding,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: authScreenTheme.logoPadding,
                child: Image.asset(Assets.appLogo),
              ),
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: PrimaryButton(
                      text: 'create_profile'.tr(),
                      onTap: () => context.router.push(
                        RegistrationRoute(),
                      ),
                    ),
                  ),
                  HBox(height: authScreenTheme.defaultSpace),
                  SizedBox(
                    width: double.infinity,
                    child: SecondaryButton(
                      text: 'login'.tr(),
                      onTap: () {},
                    ),
                  ),
                  HBox(height: authScreenTheme.bigSpace),
                  Text(
                    'having_trouble_logging_in'.tr(),
                    style: authScreenTheme.havingTroubleLoginTextStyle,
                  ),
                  HBox(height: authScreenTheme.bigSpace),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'auth_screen_privacy_policy_description_part_1'
                              .tr(),
                          style: authScreenTheme.privacyPolicyTextStyle,
                        ),
                        TextSpan(
                          text: 'auth_screen_mode_of_use_text'.tr(),
                          style: authScreenTheme.linkedPrivacyPolicyTextStyle,
                        ),
                        TextSpan(
                          text: 'auth_screen_privacy_policy_description_part_2'
                              .tr(),
                          style: authScreenTheme.privacyPolicyTextStyle,
                        ),
                        TextSpan(
                          text: 'auth_screen_cookie_text'.tr(),
                          style: authScreenTheme.linkedPrivacyPolicyTextStyle,
                        ),
                        TextSpan(
                          text: 'auth_screen_privacy_policy_description_part_3'
                              .tr(),
                          style: authScreenTheme.privacyPolicyTextStyle,
                        ),
                        TextSpan(
                          text: 'auth_screen_privacy_policy_text'.tr(),
                          style: authScreenTheme.linkedPrivacyPolicyTextStyle,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
