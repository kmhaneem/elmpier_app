import 'package:flutter/material.dart';

class CustomDropdownButtonFormField<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?>? onChanged;
  final FormFieldValidator<T>? validator;
  final T? value;
  final String? labelText;
  final String? hintText; 
  final Icon? prefixIcon;

  CustomDropdownButtonFormField({
    super.key,
    required this.items,
    this.onChanged,
    this.validator,
    this.value,
    this.labelText,
    this.hintText, 
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        labelText: labelText,
        hintText: hintText, 
        fillColor: Colors.red,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      value: value,
      items: items,
      onChanged: onChanged,
      validator: validator,
    );
  }
}