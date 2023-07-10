import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzler/Controller/quizController.dart';
import 'package:quizzler/Screen/quizScreen.dart';
import 'package:quizzler/Widget/textWidget.dart';
import 'package:quizzler/constants/style.dart';

class CustomButton extends StatelessWidget {
  final String buttonType;

  CustomButton({super.key, required this.buttonType});
  final QuizController quizController = Get.find<QuizController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextButton(
          style: kTextButtonStyle(buttonType),
          child: buttonText(buttonType),
          onPressed: () {
            buttonAction(buttonType);
          },
        ),
      ),
    );
  }

  buttonText(buttonType) {
    if (buttonType == "True") {
      return TextWidget(text: 'True');
    } else if (buttonType == "False") {
      return TextWidget(
        text: "False",
      );
    } else {
      return TextWidget(
        text: "Restart",
      );
    }
  }

  buttonAction(buttonType) {
    if (buttonType == "True") {
      quizController.checkAnswer(true);
    } else if (buttonType == "False") {
      quizController.checkAnswer(false);
    } else {
      Get.to(QuizScreen(), transition: Transition.noTransition);
    }
  }
}
