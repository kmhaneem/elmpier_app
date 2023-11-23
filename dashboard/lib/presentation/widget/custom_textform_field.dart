import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  ValueChanged<String>? onChanged;
  FormFieldValidator<String>? validator;
  String? labelText;
  Icon? prefixIcon;
  final bool obscureText;
  TextInputType keyboardType;
  TextEditingController? controller;
  final bool enabled;
  final Color textColor;
  final int maxLines;

  CustomTextFormField({
    super.key,
    this.labelText,
    this.prefixIcon,
    this.onChanged,
    this.validator,
    required this.obscureText,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.enabled = true,
    this.textColor = Colors.black,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.deepOrange),
        ),
      ),
      validator: validator,
      onChanged: onChanged,
      autocorrect: false,
      obscureText: obscureText,
      keyboardType: keyboardType,
      enabled: enabled,
      style: TextStyle(
        color: textColor,
      ),
      maxLines: maxLines,
    );
  }
}
