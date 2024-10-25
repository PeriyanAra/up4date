import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:up4date/presentation/registration/theme/index.dart';

class RegistrationPhoneInput extends StatefulWidget {
  const RegistrationPhoneInput({
    required this.controller,
    this.isAutofocus = false,
    this.focusNode,
    this.errorText,
    this.suffix,
    super.key,
    this.onChanged,
  });

  final TextEditingController controller;
  final FocusNode? focusNode;
  final String? errorText;
  final Widget? suffix;
  final bool isAutofocus;
  final ValueChanged<String>? onChanged;

  @override
  State<RegistrationPhoneInput> createState() => _RegistrationPhoneInputState();
}

class _RegistrationPhoneInputState extends State<RegistrationPhoneInput> {
  late final FocusNode _textFieldFocusNode;

  @override
  void initState() {
    super.initState();
    _textFieldFocusNode = widget.focusNode ?? FocusNode();
  }

  @override
  void dispose() {
    _textFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final registrationScreenTheme = RegistrationScreenTheme.of(context);

    return ListenableBuilder(
      listenable: _textFieldFocusNode,
      builder: (context, _) {
        return TextFormField(
          autofocus: widget.isAutofocus,
          controller: widget.controller,
          maxLines: 1,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          autofillHints: const [AutofillHints.telephoneNumber],
          focusNode: _textFieldFocusNode,
          onChanged: widget.onChanged,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp('[0-9+]')),
            LengthLimitingTextInputFormatter(20),
            MaskTextInputFormatter(
              mask: '(###) ###-##-##',
              filter: {"#": RegExp(r'[0-9]')},
              type: MaskAutoCompletionType.lazy,
            ),
          
          ],
          style: registrationScreenTheme.phoneNumberSectionTextStyle,
          decoration: InputDecoration(
            contentPadding: registrationScreenTheme.phoneInputContentPadding,
            border: registrationScreenTheme.phoneInputBorder,
            errorText: widget.errorText,
            hintText: '(___) ___-__-__',
            fillColor: registrationScreenTheme.inputFillColor,
            filled: true,
          ),
        );
      },
    );
  }
}
