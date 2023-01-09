import 'package:get/state_manager.dart';

class SliderController extends GetxController {
  int current = 0;

  void onPageUpdated(int index, dynamic reason) {
    current = index;
    update();
  }
}
