import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.textInputType,
      this.suffixIcon});
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintStyle: TextStyles.bold13.copyWith(
          color: Color(0xFF949D9E),
        ),
        hintText: hintText,
        fillColor: const Color(0xFFF9FAFA),
        filled: true,
        border: _buildOutlineInputBorder(),
        enabledBorder:
            _buildOutlineInputBorder(), // Optional for a consistent look
        focusedBorder:
            _buildOutlineInputBorder(), // Optional for a consistent look
      ),
    );
  }

  // Method to define the OutlineInputBorder
  OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1,
        color: Color(0xFFE6E9E9),
      ),
      borderRadius: BorderRadius.circular(4),
    );
  }
}