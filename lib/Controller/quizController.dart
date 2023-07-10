import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzler/Screen/endScreen.dart';
import 'package:quizzler/model/quizModel.dart';

class QuizController extends GetxController {
  RxInt questionNumber = RxInt(0);

  RxList<Icon> scoreKeeper = RxList([]);

  RxList<Question> questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ].obs;

  void nextQuestion() {
    if (questionNumber.value < questionBank.length - 1) {
      questionNumber.value++;
    }
  }

  String? getQuestionText() {
    return questionBank[questionNumber.value].questionText;
  }

  bool? getCorrectAnswer() {
    return questionBank[questionNumber.value].questionAnswer;
  }

  bool isFinished() {
    if (questionNumber.value >= questionBank.length - 1) {
      // print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    //print('reset');
    questionNumber.value = 0;
  }

  void checkAnswer(bool userPickedAnswer) {
    bool? correctAnswer = getCorrectAnswer();
    if (isFinished() == true) {
      // Get.snackbar(
      //   "Finished!",
      //   "You've reached the end of the quiz.",
      //   margin: const EdgeInsets.all(10),
      //   colorText: Colors.white,
      //   icon: const Icon(Icons.done_all, color: Colors.white),
      //   snackPosition: SnackPosition.TOP,
      //   backgroundColor: const Color.fromARGB(255, 0, 236, 28),
      // );

      Get.to(() => EndScreen(), transition: Transition.noTransition);
      reset();

      scoreKeeper.value = [];
      // print('list cleat');
    } else {
      if (userPickedAnswer == correctAnswer) {
        scoreKeeper.add(const Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        scoreKeeper.add(const Icon(
          Icons.close,
          color: Colors.red,
        ));
      }
      nextQuestion();
    }
    update();
  }
}
