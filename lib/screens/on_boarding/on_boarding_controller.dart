import 'package:seek_me/general_exports.dart';

class OnBoardingController extends GetxController {
  int currentIndex = 0;
  PageController controller = PageController(
    initialPage: 0,
  );

  List<dynamic> introScreens = <dynamic>[
    {
      keyImage: imageIntroOne,
      keyTitle: 'intr_text_one'.tr,
    },
    {
      keyImage: imageIntroTwo,
      keyTitle: 'intr_text_two'.tr,
    },
    {
      keyImage: imageIntroThree,
      keyTitle: 'intr_text_three'.tr,
    },
  ];

  void onPageChanged(int value) {
    currentIndex = value;

    update();
  }

  // void onTap() {
  //   controller.nextPage(
  //       duration: const Duration(milliseconds: 500), curve: Curves.linear);
  //   update();
  // }

  void onPressed() {
    //print(currentIndex);

    controller.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.linear);

    update();
  }
}
