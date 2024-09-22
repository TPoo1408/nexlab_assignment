import 'package:flutter/material.dart';
import 'package:nexlab_assignment/configs/styles/app_style.dart';

class MTextField extends StatelessWidget {
  const MTextField(
      {super.key,
      this.hintText,
      this.labelText,
      this.onChanged,
      this.obscureText,
      this.keyboardType,
      this.prefixIcon,
      this.suffixIcon,
      this.readOnly,
      this.controller,
      this.focusNode,
      this.maxLines,
      this.minLines,
      this.textInputAction});
  final String? hintText;
  final String? labelText;
  final Function(String)? onChanged;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? readOnly;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final int? maxLines;
  final int? minLines;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (labelText != null) Text(labelText!, style: AppStyle.regularStyle()),
        if (labelText != null) const SizedBox(height: 8),
        TextField(
          textInputAction: textInputAction,
          minLines: minLines,
          maxLines: maxLines,
          focusNode: focusNode,
          controller: controller,
          decoration: InputDecoration(
            hintStyle:
                AppStyle.regularStyle(fontSize: 16, color: Colors.black.withOpacity(0.25)),
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
          ),
          onChanged: onChanged,
          obscureText: obscureText ?? false,
          keyboardType: keyboardType ?? TextInputType.text,
          readOnly: readOnly ?? false,
        ),
      ],
    );
  }
}
