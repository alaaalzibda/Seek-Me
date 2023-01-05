import 'package:intl_phone_field/countries.dart';
import 'package:seek_me/general_exports.dart';

class RegisterController extends GetxController {
  final TextEditingController mobileNumberCtrl = TextEditingController();
  int countryMaxlength = 10;
  bool isButtonEnabled = false;

  void onCountryChanged(Country selectedCountry) {
    countryMaxlength = selectedCountry.maxLength;
    mobileNumberCtrl.text = "";
    isButtonEnabled = false;
    update();
  }

  void onChanged(phone) {
    isButtonEnabled = phone.number.length == countryMaxlength;
    update();
  }
}
