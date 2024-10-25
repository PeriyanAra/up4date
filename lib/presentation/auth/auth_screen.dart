import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:up4date/presentation/common/index.dart';

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
    return Scaffold(body:Center(
      child: Text('data'),
    ));
  }
}
