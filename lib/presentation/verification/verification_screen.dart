import 'dart:developer';

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

class _VerificationScreenContent extends StatefulWidget {
  const _VerificationScreenContent({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  final String phoneNumber;

  @override
  State<_VerificationScreenContent> createState() =>
      _VerificationScreenContentState();
}

class _VerificationScreenContentState
    extends State<_VerificationScreenContent> {
  bool _isContinueButtonEnabled = false;
  late final TextEditingController _controller;
  late final OverlayLoaderHelper _loader;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();

    _loader = OverlayLoaderHelper();
  }

  @override
  Widget build(BuildContext context) {
    final verificationScreenTheme = VerificationScreenTheme.of(context);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: Up4DateAppBar(
          onBackButtonTap: () {
            if (!context.router.canPop()) return;

            context.router.popForced();
          },
        ),
        body: BlocListener<VerificationBloc, VerificationState>(
          listener: (context, state) {
            log(
              state.toString(),
              name: 'state',
            );
            state.maybeMap(
              loading: (value) => _loader.show(context),
              loaded: (_) =>
                  context.router.replaceAll([PageRouteInfo('authenticated')]),
              orElse: () => _loader.hide(),
            );
          },
          child: SafeArea(
            child: Padding(
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
                          style:
                              verificationScreenTheme.linkedSubtitleTextStyle,
                        ),
                        TextSpan(
                          text:
                              'to_phone_number'.tr(args: [widget.phoneNumber]),
                          style: verificationScreenTheme.subtitleTextStyle,
                        ),
                      ],
                    ),
                  ),
                  HBox(height: 24.0),
                  BlocBuilder<VerificationBloc, VerificationState>(
                    builder: (context, state) {
                      final isErrorState = state is VerificationErrorState;

                      return VerificationCodeInput(
                        onChange: _onChange,
                        controller: _controller,
                        error: (
                          hasError: isErrorState,
                          textError: isErrorState
                              ? state.error.translationKey.tr()
                              : null,
                        ),
                      );
                    },
                  ),
                  Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: PrimaryButton(
                      text: 'continue_text'.tr(),
                      onTap: _isContinueButtonEnabled
                          ? _onContinueButtonTap
                          : null,
                    ),
                  ),
                  HBox(
                    height: verificationScreenTheme.continueButtonBottomSpace,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onChange(String value) {
    final isContinueButtonEnabled = value.length >= 6;

    if (isContinueButtonEnabled != _isContinueButtonEnabled) {
      setState(() {
        _isContinueButtonEnabled = isContinueButtonEnabled;
      });
    }
  }

  void _onContinueButtonTap() {
    context.read<VerificationBloc>().add(
          VerificationEvent.verifyPhoneNumber(
            verificationCode: _controller.text,
          ),
        );
    FocusScope.of(context).unfocus();
  }
}
