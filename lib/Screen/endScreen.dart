import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzler/Controller/quizController.dart';
import 'package:quizzler/Widget/customButton.dart';
import 'package:quizzler/Widget/textWidget.dart';

class EndScreen extends StatelessWidget {
  EndScreen({super.key});

  QuizController quizController = Get.find<QuizController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 8,
            child: Center(
              child: TextWidget(
                  text:
                      'Congratulations!\nYou have completed the quiz.\nPress Restart button to restart the quiz'),
            ),
          ),
          CustomButton(buttonType: 'Restart'),
        ],
      ),
    );
  }
}
