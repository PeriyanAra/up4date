import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';
import 'package:up4date/presentation/common/index.dart';
import 'package:up4date/presentation/verification/bloc/verification_bloc.dart';
import 'package:up4date/presentation/verification/theme/index.dart';

class VerificationCodeInput extends StatefulWidget {
  const VerificationCodeInput({
    required this.onCodeSubmitted,
    required this.error,
    Key? key,
  }) : super(key: key);
  final ValueChanged<String> onCodeSubmitted;
  final ({bool hasError, String? textError}) error;

  @override
  State<VerificationCodeInput> createState() => _VerificationCodeInputState();
}

class _VerificationCodeInputState extends State<VerificationCodeInput> {
  bool _hasError = false;
  static const _codeTextFieldErrorMaxLines = 3;
  static const _codeLength = 6;

  final _codeController = TextEditingController();
  String _previousCode = '';
  final _focusNode = FocusNode();

  @override
  void initState() {
    _codeController.addListener(_handleInputChange);
    _focusNode.addListener(_handleFocusNode);

    super.initState();
  }

  @override
  void dispose() {
    _codeController.removeListener(_handleInputChange);
    _codeController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant VerificationCodeInput oldWidget) {
    _hasError = widget.error.hasError;
    super.didUpdateWidget(oldWidget);
  }

  void _handleFocusNode() {
    context.read<VerificationBloc>().add(VerificationEvent.reset());
      setState(() {});
  }

  void _handleInputChange() {
    final currentCode = _codeController.text;
    if (_previousCode.length > currentCode.length) {
      _hasError = false;
      _codeController.clear();
    }

    if (_codeController.text.isEmpty) {
      _previousCode = '';
    } else {
      _previousCode = currentCode;
    }
  }

  @override
  Widget build(BuildContext context) {
    final verificationScreenTheme = VerificationScreenTheme.of(context);

    return Pinput(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      length: _codeLength,
      focusNode: _focusNode,
      controller: _codeController,
      keyboardAppearance: Brightness.light,
      autofocus: true,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      forceErrorState: _hasError,
      validator: (_) => widget.error.textError,
      submittedPinTheme: verificationScreenTheme.submittedPinTheme,
      defaultPinTheme: verificationScreenTheme.defaultPinTheme,
      errorPinTheme: verificationScreenTheme.errorPinTheme,
      focusedPinTheme: verificationScreenTheme.focusedPinTheme,
      errorBuilder: (_, __) => (widget.error.textError != null)
          ? Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                widget.error.textError!,
                maxLines: _codeTextFieldErrorMaxLines,
                style: verificationScreenTheme.errorTextStyle,
              ),
            )
          : const SizedBox.shrink(),
      hapticFeedbackType: HapticFeedbackType.lightImpact,
      onCompleted: widget.onCodeSubmitted,
      cursor: Container(
        alignment: Alignment.center,
        child: SvgPicture.asset(
          Assets.cursore,
          colorFilter: ColorFilter.mode(
            _hasError
                ? verificationScreenTheme.errorCursoreColor
                : verificationScreenTheme.defaultCursoreColor,
            BlendMode.color,
          ),
        ),
      ),
    );
  }
}