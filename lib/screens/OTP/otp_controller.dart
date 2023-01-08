import '../../general_exports.dart';

class OtpController extends GetxController {
  FocusNode? pin2FocusNode = FocusNode();
  FocusNode? pin3FocusNode = FocusNode();
  FocusNode? pin4FocusNode = FocusNode();
  bool isButtonEnabeld = false;

  final TextEditingController digitOne = TextEditingController();
  final TextEditingController digitTwo = TextEditingController();
  final TextEditingController digitThree = TextEditingController();
  final TextEditingController digitFour = TextEditingController();

  void onChanged(String value) {
    if (value.length == 1) {
      pin4FocusNode!.unfocus();
    }
    if (digitOne.text.isNotEmpty &&
        digitTwo.text.isNotEmpty &&
        digitThree.text.isNotEmpty &&
        digitFour.text.isNotEmpty) {
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
