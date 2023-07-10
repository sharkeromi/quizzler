import 'package:flutter/material.dart';
import 'package:quizzler/constants/color.dart';

TextStyle kTextStyle() {
  return const TextStyle(
      fontSize: 25.0, color: Colors.white, decoration: TextDecoration.none);
}

ButtonStyle kTextButtonStyle(buttonType) {
  return TextButton.styleFrom(
    backgroundColor: buttonType == "False" ? kCFalseButton : kCTrueButton,
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    padding: EdgeInsets.zero,
    minimumSize: Size.zero,
  );
}
