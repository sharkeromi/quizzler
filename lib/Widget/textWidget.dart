import 'package:flutter/material.dart';
import 'package:quizzler/constants/style.dart';

class TextWidget extends StatelessWidget {
  var text;

  TextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: kTextStyle(),
      textAlign: TextAlign.center,
    );
  }
}
