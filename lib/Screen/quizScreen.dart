import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzler/Controller/quizController.dart';
import 'package:quizzler/Widget/customButton.dart';
import 'package:quizzler/Widget/textWidget.dart';

class QuizScreen extends StatelessWidget {
  QuizScreen({super.key});

  final QuizController quizController = Get.find<QuizController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Obx(
                  () => TextWidget(
                    text: quizController
                            .questionBank[quizController.questionNumber.value]
                            .questionText ??
                        '',
                  ),
                ),
              ),
            ),
          ),
          CustomButton(buttonType: 'True'),
          CustomButton(
            buttonType: 'False',
          ),
          Obx(() => Row(
                children: quizController.scoreKeeper,
              ))
        ],
      ),
    );
  }
}
