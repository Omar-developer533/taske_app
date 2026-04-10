import 'package:flutter/material.dart';
import 'package:taske_app/core/utls/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.fieldName, this.validator, this.controller});
  final String fieldName;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(fieldName, style: AppStyle.styleSemiBold14(context)),
        const SizedBox(height: 5),
        TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            border: getBorder(),
            enabledBorder: getBorder(),
            focusedBorder: getEnableBorder(),
            fillColor: Colors.grey[200],
            filled: true,
          ),
        ),
      ],
    );
  }

  OutlineInputBorder getEnableBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.grey, width: 1),
    );
  }

  OutlineInputBorder getBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.transparent, width: 0),
    );
  }
}
