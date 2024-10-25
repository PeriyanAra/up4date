import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:up4date/core/di/index.dart';
import 'package:up4date/presentation/common/index.dart';
import 'package:up4date/presentation/verification/bloc/verification_bloc.dart';
import 'package:up4date/presentation/verification/theme/index.dart';
import 'package:up4date/presentation/verification/widgets/verification_code_input.dart';

@RoutePage()
class VerificationScreen extends StatelessWidget {
  const VerificationScreen({
    super.key,
    required this.phoneNumber,
  });

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: di<VerificationBloc>(),
      child: _VerificationScreenContent(
        phoneNumber: phoneNumber,
      ),
    );
  }
}

class _VerificationScreenContent extends StatelessWidget {
  const _VerificationScreenContent({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    final verificationScreenTheme = VerificationScreenTheme.of(context);

    return Scaffold(
      appBar: Up4DateAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'verification_title'.tr() + '\n',
                    style: verificationScreenTheme.titleTextStyle,
                  ),
                  TextSpan(
                    text: 'send_code_again'.tr(),
                    style: verificationScreenTheme.linkedSubtitleTextStyle,
                  ),
                  TextSpan(
                    text: 'to_phone_number'.tr(args: [phoneNumber]),
                    style: verificationScreenTheme.subtitleTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            BlocBuilder<VerificationBloc, VerificationState>(
              builder: (context, state) {
                final isErrorState = state is VerificationErrorState;

                return VerificationCodeInput(
                  onCodeSubmitted: (vaue) {},
                  error: (
                    hasError: isErrorState,
                    textError: isErrorState ? state.error.toString() : null,
                  ),
                );
              },
            ),
            PrimaryButton(
              text: 'dafa',
              onTap: () => context.router.replaceAll(
                [PageRouteInfo('authenticated')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
