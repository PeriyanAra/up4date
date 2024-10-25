import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:up4date/presentation/common/index.dart';

class RegistrationPhoneInput extends StatefulWidget {
  const RegistrationPhoneInput({
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
  State<RegistrationPhoneInput> createState() => _RegistrationPhoneInputState();
}

class _RegistrationPhoneInputState extends State<RegistrationPhoneInput> {
  late final FocusNode _textFieldFocusNode;

  @override
  void initState() {
    super.initState();
    _textFieldFocusNode = widget.focusNode;
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
            autofocus: widget.isAutofocus,
            controller: widget.controller,
            maxLines: 1,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            autofillHints: const [AutofillHints.telephoneNumber],
            focusNode: _textFieldFocusNode,
            onTapOutside: (event) {
              _textFieldFocusNode.unfocus();
            },
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[0-9+]')),
              LengthLimitingTextInputFormatter(20),
              // _PhoneNumberInputFormatter(countryCode: countryInfo.isoCode),
            ],
            decoration: InputDecoration(
              border: OutlineInputBorder(
                // borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              errorText: widget.errorText,
              hintText: 'RegistrationScreen_Redesign_PhoneNumber',
              fillColor: RegistrationScreenTheme.of(context)
                  .phoneNumberSectionBackgroundColor,
              filled: true,
            ),
          );
        });
  }
}
