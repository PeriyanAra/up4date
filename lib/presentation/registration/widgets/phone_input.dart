import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneInput extends StatelessWidget {
  const PhoneInput({
    required this.controller,
    // required this.countryInfo,
    required this.focusNode,
    required this.isAutofocus,
    this.errorText,
    this.suffix,
    super.key,
  });

  final TextEditingController controller;
  // final CountryInfo countryInfo;
  final FocusNode focusNode;
  final String? errorText;
  final Widget? suffix;
  final bool isAutofocus;

  @override
  Widget build(BuildContext context) {
    const maxPhoneNumberLength = 20;

    return AppTextField(
      errorText: errorText,
      autofocus: isAutofocus,
      controller: controller,
      focusNode: focusNode,
      maxLines: 1,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      autofillHints: const [AutofillHints.telephoneNumber],
      hintText: 'RegistrationScreen_Redesign_PhoneNumber',
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[0-9+]')),
        LengthLimitingTextInputFormatter(maxPhoneNumberLength),
        // _PhoneNumberInputFormatter(countryCode: countryInfo.isoCode),
      ],
    );
  }
}

class AppTextField extends StatefulWidget {
  const AppTextField({
    this.controller,
    this.focusNode,
    this.keyboardType,
    this.autofocus = false,
    this.suffix,
    this.hintText,
    this.inputFormatters,
    this.textInputAction,
    this.expands = false,
    this.errorText,
    this.autofillHints,
    this.maxLines,
    this.minLines,
    this.onFieldSubmitted,
    this.onChanged,
    this.textStyle,
    this.hintTextStyle,
    super.key,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? errorText;
  final Widget? suffix;
  final bool autofocus;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool expands;
  final Iterable<String>? autofillHints;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onChanged;
  final int? maxLines;
  final int? minLines;
  final TextStyle? textStyle;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
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
    return ListenableBuilder(
        listenable: _textFieldFocusNode,
        builder: (context, _) {
          return TextFormField(
            autofocus: widget.autofocus,
            controller: widget.controller,
            focusNode: _textFieldFocusNode,
            maxLines: widget.maxLines,
            minLines: widget.minLines,
            keyboardType: widget.keyboardType,
            textInputAction: TextInputAction.done,
            autofillHints: widget.autofillHints,
            expands: widget.expands,
            onFieldSubmitted: widget.onFieldSubmitted,
            onChanged: widget.onChanged,
            inputFormatters: widget.inputFormatters,
            decoration: InputDecoration(
              
            ),
          );
        });
  }
}
