import 'package:flutter/material.dart';

TextStyle kTextStyle() {
  return const TextStyle(
      fontSize: 25.0, color: Colors.white, decoration: TextDecoration.none);
}

ButtonStyle kTextButtonStyle(buttonType) {
  return TextButton.styleFrom(
    backgroundColor: buttonType == "True" ? Colors.green : Colors.red,
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    padding: EdgeInsets.zero,
    minimumSize: Size.zero,
  );
}
