import 'package:flutter/material.dart';

class UiGoCustomInputText extends StatelessWidget {
  const UiGoCustomInputText({
    super.key,
    required this.labelText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.borderEnabled = true,
    this.fontSize = 15,
    this.onChanged,
    this.validator,
    this.autovalidateMode,
  });

  final String labelText;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool borderEnabled;
  final double fontSize;
  final Function(String text)? onChanged;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: fontSize),
      autovalidateMode: autovalidateMode,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        enabledBorder: borderEnabled
            ? const UnderlineInputBorder(
                borderSide: BorderSide(
                color: Colors.black12,
              ))
            : InputBorder.none,
        labelText: labelText,
        contentPadding: const EdgeInsets.symmetric(vertical: 5),
        labelStyle: const TextStyle(
          color: Colors.black45,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
