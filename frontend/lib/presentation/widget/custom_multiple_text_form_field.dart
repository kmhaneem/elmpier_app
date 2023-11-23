import 'package:flutter/material.dart';

class CustomMultipleTextFormField extends StatelessWidget {
  ValueChanged<String>? onChanged;
  FormFieldValidator<String>? validator;
  String? labelText;
  Icon? prefixIcon;
  TextInputType keyboardType;
  TextEditingController? controller;
  final bool enabled;
  final Color textColor;
  final int maxLines;
  final int minLines;

  CustomMultipleTextFormField({
    super.key,
    this.labelText,
    this.prefixIcon,
    this.onChanged,
    this.validator,
    this.keyboardType = TextInputType.multiline,
    this.controller,
    this.enabled = true,
    this.textColor = Colors.black,
    this.maxLines = 7,
    this.minLines = 1,
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
      ),
      validator: validator,
      onChanged: onChanged,
      autocorrect: true,
      keyboardType: keyboardType,
      enabled: enabled,
      style: TextStyle(
        color: textColor,
      ),
      maxLines: maxLines,
      minLines: minLines,
    );
  }
}
