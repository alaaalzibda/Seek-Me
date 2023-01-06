import 'package:common_ui_toolkit/common_ui_toolkit.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TextFiledController extends GetxController {
  bool isButtonEnabeld = false;

  final TextEditingController digitOne = TextEditingController();
  final TextEditingController digitTwo = TextEditingController();
  final TextEditingController digitThree = TextEditingController();
  final TextEditingController digitFour = TextEditingController();

  void onChanged(String value) {
    // if (value.length == 1) {
    //   FocusScope.of(context).nextFocus();
    // }
    // if (value.isEmpty) {
    //   FocusScope.of(context).previousFocus();
    // }
  }

  void onTap() {
    if (digitOne.text.length == 1) {
      isButtonEnabeld = true;
      update();
    }
  }
}
