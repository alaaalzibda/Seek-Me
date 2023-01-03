import '../../general_exports.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(
      const Duration(seconds: 2),
      (() {
        Get.toNamed(routeOnBoarding);
      }),
    );
  }
}
