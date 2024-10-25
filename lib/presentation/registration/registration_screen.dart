import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:up4date/presentation/common/index.dart';

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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Укажи свой номер телефона',
          style: registrationScreenTheme.titleTextStyle,
        ),
        Text(
          'Мы отправим на зтот номер код подтверждения',
          style: registrationScreenTheme.subtitleTextStyle,
        ),
      ],
    );
  }
}
