
import 'package:get/get.dart';
import 'package:quizzler/Controller/quizController.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizController());
  }
}