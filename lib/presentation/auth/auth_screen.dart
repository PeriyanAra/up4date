import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:up4date/presentation/common/constants/assets.dart';
import 'package:up4date/presentation/common/widgets/primary_button.dart';
import 'package:up4date/presentation/common/widgets/up4date_app_bar.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Up4DateAppBar(),
      body: _AuthScreenContent(),
    );
  }
}

class _AuthScreenContent extends StatelessWidget {
  const _AuthScreenContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(Assets.appLogo),
          PrimaryButton(
            text: 'agsdhasgdkjasd',
            onTap: () {},
          )
        ],
      ),
    );
  }
}
