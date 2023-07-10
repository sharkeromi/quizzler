import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzler/Controller/quizController.dart';
import 'package:quizzler/Widget/textWidget.dart';
import 'package:quizzler/constants/style.dart';


class CustomButton extends StatelessWidget {
  var buttonType;

   CustomButton({super.key, required this.buttonType});
   QuizController quizController = Get.find<QuizController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: kTextButtonStyle(buttonType),
              child: buttonType == "True"? TextWidget(text: 'True'): TextWidget(text: "False",),
              onPressed: () {
                buttonType == "True"? quizController.checkAnswer(true): quizController.checkAnswer(false);
              },
            ),
          ),
        );
  }
}