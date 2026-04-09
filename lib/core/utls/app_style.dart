import 'package:flutter/material.dart';

abstract class AppStyle {
  static styleRegular12(context) {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade600,
    );
  }

  static styleRegular16(context) {
    return TextStyle(fontSize: 16, fontWeight: FontWeight.w400);
  }

  static styleRegular20(context) {
    return TextStyle(fontSize: 20, fontWeight: FontWeight.w400);
  }

  static styleRegular24(context) {
    return TextStyle(fontSize: 24, fontWeight: FontWeight.w400);
  }

  static styleRegular18(context) {
    return TextStyle(fontSize: 18, fontWeight: FontWeight.w400);
  }

  static styleRegular14(context) {
    return TextStyle(fontSize: 14, fontWeight: FontWeight.w400);
  }

  static styleMedium16(context,{Color? color}) {
    return TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: color);
    
  }

  static styleMedium14(context) {
    return TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
  }

  static styleMedium18(context) {
    return TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
  }

  static styleMedium20(context) {
    return TextStyle(fontSize: 20, fontWeight: FontWeight.w500);
  }

  static styleMedium24(context) {
    return TextStyle(fontSize: 24, fontWeight: FontWeight.w500);
  }

  static styleSemiBold14(context) {
    return TextStyle(fontSize: 14, fontWeight: FontWeight.w600);
  }

  static styleSemiBold16(context) {
    return TextStyle(fontSize: 16, fontWeight: FontWeight.w600);
  }

  static styleSemiBold18(context) {
    return TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
  }

  static styleSemiBold20(context) {
    return TextStyle(fontSize: 20, fontWeight: FontWeight.w600);
  }

  static styleSemiBold24(context) {
    return TextStyle(fontSize: 24, fontWeight: FontWeight.w600);
  }
}
