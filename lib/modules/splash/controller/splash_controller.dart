import 'package:get/get.dart';
import 'package:supercoder_task_assignment/utils/constants/texts.dart';
import 'package:supercoder_task_assignment/utils/routes/routes.dart';

class SplashController extends GetxController {
  var displayedText = "".obs;

  @override
  void onInit() {
    super.onInit();
    _startTyping();
  }

  void _startTyping() async {
    for (int i = 0; i < AppTexts.appName.length; i++) {
      await Future.delayed(const Duration(milliseconds: 200));
      displayedText.value += AppTexts.appName[i];
    }

    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed(Routes.home);
  }
}