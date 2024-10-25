// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ru = {
  "registration_title": "Укажи свой номер телефона",
  "registration_subtitle": "Мы отправим на зтот номер код подтверждения",
  "verification_title": "Введи код из смс",
  "send_code_again": "Отправить код еще раз ",
  "to_phone_number": "на номер телефона {}",
  "continue_text": "Продолжить",
  "login": "Войти",
  "create_profile": "Создать профиль",
  "having_trouble_logging_in": "Не удается войти?",
  "auth_screen_privacy_policy_description_part_1": "Нажимая «войти», ты соглашаешься с ",
  "auth_screen_privacy_policy_description_part_2": " ресурса. Ты также можешь ознакомиться с тем, как мы используем ",
  "auth_screen_privacy_policy_description_part_3": " и с нашей ",
  "auth_screen_mode_of_use_text": "нашими правилами использования",
  "auth_screen_cookie_text": "Cookie",
  "auth_screen_privacy_policy_text": "политикой конфиденциальности"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru": ru};
}
