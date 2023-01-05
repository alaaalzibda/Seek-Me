import 'package:intl_phone_field/countries.dart';
import 'package:seek_me/general_exports.dart';

class RegisterController extends GetxController {
  final TextEditingController mobileNumberCtrl = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  int countryMaxlength = 10;
  bool isValid = false;
  void onPressed() {
    isValid = formKey.currentState!.validate();
    update();
  }

  void onCountryChanged(Country selectedCountry) {
    mobileNumberCtrl.text = " ";
    countryMaxlength = selectedCountry.maxLength;
    update();
  }

  void onChanged(phone) {
    if (phone.number.length < countryMaxlength) {
      isValid = false;
    }
    update();
  }
}
