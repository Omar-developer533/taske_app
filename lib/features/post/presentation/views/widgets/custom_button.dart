import 'package:flutter/material.dart';
import 'package:taske_app/core/utls/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonName,
    this.buttonColor,
    this.nameColor,
    this.onTap,
  });
  final Function()? onTap;
  final String buttonName;
  final Color? buttonColor, nameColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: buttonColor ?? Colors.deepOrangeAccent,
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              buttonName,
              style: AppStyle.styleMedium16(context, color: nameColor),
            ),
          ),
        ),
      ),
    );
  }
}
