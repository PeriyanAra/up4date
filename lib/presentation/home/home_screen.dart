import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:up4date/app/app_theme_mode/index.dart';
import 'package:up4date/presentation/common/index.dart';
import 'package:up4date/presentation/home/theme/index.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeScreenTheme = HomeScreenTheme.of(context);
    final appThemeMode = context.read<AppThemeMode>();

    return Scaffold(
      body: Padding(
        padding: homeScreenTheme.homeContentPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home,
              color: homeScreenTheme.iconsDefaultColor,
              size: homeScreenTheme.homeIconSize,
            ),
            Column(
              children: [
                Text(
                  'welcome_text'.tr(),
                  style: homeScreenTheme.titleTextStyle,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'app_theme'.tr(),
                  style: homeScreenTheme.defaultTextTheme,
                ),
                Switch.adaptive(
                  value: appThemeMode.themeMode == ThemeMode.dark,
                  onChanged: (isDarkTheme) {
                    if (isDarkTheme) {
                      appThemeMode.updateThemeMode(ThemeMode.dark);
                    } else {
                      appThemeMode.updateThemeMode(ThemeMode.light);
                    }
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'language'.tr(),
                  style: homeScreenTheme.defaultTextTheme,
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => LanguageDialogHelper.show(context),
                  child: Icon(
                    Icons.language,
                    color: homeScreenTheme.iconsDefaultColor,
                  ),
                ),
              ],
            ),
            HBox(height: homeScreenTheme.logoutButtonSpace),
            SizedBox(
              width: double.infinity,
              child: PrimaryButton(
                text: 'logout'.tr(),
                onTap: () => context.router.replaceAll(
                  [PageRouteInfo('unauthenticated')],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
