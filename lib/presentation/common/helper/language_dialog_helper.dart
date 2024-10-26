import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:up4date/presentation/common/index.dart';

class LanguageDialogHelper {
  static Future<void> show(
    BuildContext context,
  ) {
    final helperTheme = LanguageDialogHelperTheme.of(context);

    return showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: helperTheme.backgroundColor,
          title: Text(
            'select_language'.tr(),
            textAlign: TextAlign.center,
            style: helperTheme.titleTextStyle,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: context.supportedLocales
                .map(
                  (locale) => Container(
                    width: double.infinity,
                    padding: helperTheme.contentItemsPadding,
                    child: PrimaryButton(
                      text: locale.languageCode,
                      onTap: () {
                        context.setLocale(locale);
                        context.router.popForced();
                      },
                    ),
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
