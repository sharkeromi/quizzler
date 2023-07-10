
import 'package:get/get.dart';
import 'package:quizzler/Screen/quizScreen.dart';

class SplashScreenController extends GetxController {

  @override
  void onInit() async {
    await navigateToHome();
    super.onInit();
  }

  navigateToHome() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Get.offAll(() => QuizScreen());
  }
}