import 'package:seek_me/general_exports.dart';

class RegisterController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey();
  bool isValid = false;
  void onPressed() {
    isValid = formKey.currentState!.validate();
    update();
  }
}
