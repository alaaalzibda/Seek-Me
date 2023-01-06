import '../../general_exports.dart';

class OtpController extends GetxController {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  bool isButtonEnabeld = false;

  final TextEditingController digitOne = TextEditingController();
  final TextEditingController digitTwo = TextEditingController();
  final TextEditingController digitThree = TextEditingController();
  final TextEditingController digitFour = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  void OnChanged(String value) {
    if (value.length == 1) {
      isButtonEnabeld = true;
      pin4FocusNode!.unfocus();
    }
    if (digitOne.text.isNotEmpty &&
        digitTwo.text.isNotEmpty &&
        digitThree.text.isNotEmpty) {
      isButtonEnabeld = true;
    }
    if (value.isEmpty) {
      pin4FocusNode!.previousFocus();
      isButtonEnabeld = false;
    }
    update();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }

    if (value.isEmpty) {
      focusNode!.previousFocus();
      isButtonEnabeld = false;
    }
    update();
  }
}
