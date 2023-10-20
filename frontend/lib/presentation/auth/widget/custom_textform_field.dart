import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextFormField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final FormFieldValidator<String> validator;
  final String labelText;
  final Icon prefixIcon;
  final bool obscureText;
  final TextInputType keyboardType;

  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.prefixIcon,
    required this.onChanged,
    required this.validator,
    required this.obscureText,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        labelText: labelText,
        fillColor: Colors.red,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: validator,
      onChanged: onChanged,
      autocorrect: false,
      obscureText: obscureText,
      keyboardType: keyboardType,
    );
  }
}
