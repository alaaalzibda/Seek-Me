import '../../general_exports.dart';

class OtpController extends GetxController {
  bool isButtonEnabeld = false;

  final TextEditingController digitOne = TextEditingController();
  final TextEditingController digitTwo = TextEditingController();
  final TextEditingController digitThree = TextEditingController();
  final TextEditingController digitFour = TextEditingController();

  // void onChanged(String value) {
  //   if (value.length == 1) {
  //     print(controller);
  //     FocusScope.of(context).nextFocus();
  //isButtonEnabeld = true;
  //   }
  //   if (value.isEmpty) {
  //     FocusScope.of(context).previousFocus();
  //   }
  // }

  // void onTap() {
  //   if (digitOne.text.isNotEmpty &&
  //       digitTwo.text.isNotEmpty &&
  //       digitThree.text.isNotEmpty &&
  //       digitFour.text.isNotEmpty) {
  //     isButtonEnabeld = true;
  //     update();
  //   }
  // }
}
