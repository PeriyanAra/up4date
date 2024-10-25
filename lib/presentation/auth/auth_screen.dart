import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:up4date/presentation/auth/theme/index.dart';
import 'package:up4date/presentation/common/index.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(Assets.appLogo),
            SizedBox(
              width: double.infinity,
              child: PrimaryButton(
                text: 'create_profile'.tr(),
                onTap: () {},
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: SecondaryButton(
                text: 'login'.tr(),
                onTap: () {},
              ),
            ),
            Text(
              'having_trouble_logging_in'.tr(),
              style: authScreenTheme.havingTroubleLoginTextStyle,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'auth_screen_privacy_policy_description_part_1'.tr(),
                    style: authScreenTheme.havingTroubleLoginTextStyle,
                  ),
                  TextSpan(
                    text: 'auth_screen_mode_of_use_text'.tr(),
                    style: authScreenTheme.linkedHavingTroubleLoginTextStyle,
                  ),
                  TextSpan(
                    text: 'auth_screen_privacy_policy_description_part_2'.tr(),
                    style: authScreenTheme.havingTroubleLoginTextStyle,
                  ),
                  TextSpan(
                    text: 'auth_screen_cookie_text'.tr(),
                    style: authScreenTheme.linkedHavingTroubleLoginTextStyle,
                  ),
                  TextSpan(
                    text: 'auth_screen_privacy_policy_description_part_3'.tr(),
                    style: authScreenTheme.havingTroubleLoginTextStyle,
                  ),
                  TextSpan(
                    text: 'auth_screen_privacy_policy_text'.tr(),
                    style: authScreenTheme.linkedHavingTroubleLoginTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
