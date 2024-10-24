import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isPassword = false,
    this.maxLines = 1,
    this.initialValue,
    this.label,
  });
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;
  final int maxLines;
  final String? initialValue;
  final Widget? label;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isSecure = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      scrollPadding: EdgeInsets.zero,
      initialValue: widget.initialValue,
      maxLines: widget.maxLines,
      obscureText: isSecure,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field is required';
        }
        return null;
      },
      controller: widget.controller,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: widget.label,
        alignLabelWithHint: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        hintText: widget.hintText,
        hintStyle: AppStyles.textStyle12R.copyWith(
          color: AppColors.gray100Color,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
          ),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isSecure = !isSecure;
                  });
                },
                icon: isSecure
                    ? const Icon(
                        Icons.visibility_off,
                        color: AppColors.blackColor,
                      )
                    : const Icon(
                        Icons.visibility_sharp,
                        color: AppColors.blackColor,
                      ),
              )
            : null,
      ),
    );
  }
}
