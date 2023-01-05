import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:seek_me/general_exports.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<RegisterController>(
          init: RegisterController(),
          builder: (RegisterController controller) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: DEVICE_WIDTH * 0.06),
                child: Column(
                  children: [
                    SizedBox(
                      height: DEVICE_HEIGHT * 0.1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: DEVICE_HEIGHT * 0.07),
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          imageLogo,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Form(
                      key: controller.formKey,
                      child: Column(
                        children: [
                          IntlPhoneField(
                            decoration: InputDecoration(
                              hintText: 'Mobile_Number'.tr,
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(DEVICE_WIDTH * 0.04),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: DEVICE_HEIGHT * 0.01,
                          ),
                          TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Referral_code'.tr,
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(DEVICE_WIDTH * 0.04),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: DEVICE_HEIGHT * 0.02,
                          ),
                          Text(
                            'hint_message'.tr,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: DEVICE_WIDTH * 0.03,
                            ),
                          ),
                          SizedBox(
                            height: DEVICE_HEIGHT * 0.02,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      DEVICE_WIDTH * 0.04),
                                ),
                              ),
                              backgroundColor: controller.isValid
                                  ? MaterialStateProperty.all(
                                      Colors.deepPurpleAccent)
                                  : MaterialStateProperty.all(Colors.grey),
                              padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                  horizontal: DEVICE_WIDTH * 0.01,
                                  vertical: DEVICE_HEIGHT * 0.02,
                                ),
                              ),
                              textStyle: MaterialStateProperty.all(
                                const TextStyle(fontSize: 30),
                              ),
                            ),
                            onPressed: controller.onPressed,
                            child: Center(
                              child: Text(
                                'Login_Sign up'.tr,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: DEVICE_WIDTH * 0.05,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: DEVICE_HEIGHT * 0.02,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: DEVICE_WIDTH * 0.4,
                          child: Divider(
                            thickness: DEVICE_WIDTH * 0.004,
                            height: DEVICE_HEIGHT * 0.04,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: DEVICE_WIDTH * 0.02,
                          ),
                          child: Center(
                            child: Text(
                              'or'.tr,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: DEVICE_WIDTH * 0.4,
                          child: Divider(
                            thickness: DEVICE_WIDTH * 0.004,
                            height: DEVICE_HEIGHT * 0.04,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: DEVICE_HEIGHT * 0.01,
                    ),
                    Container(
                      width: DEVICE_HEIGHT,
                      padding: EdgeInsets.symmetric(
                        horizontal: DEVICE_WIDTH * 0.01,
                        vertical: DEVICE_HEIGHT * 0.02,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: DEVICE_WIDTH * 0.001,
                        ),
                        borderRadius:
                            BorderRadius.circular(DEVICE_WIDTH * 0.04),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: DEVICE_WIDTH * 0.03),
                            child: Image.asset(imagegoogle),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: DEVICE_WIDTH * 0.06),
                            child: Text(
                              'Continue_with_Google'.tr,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: DEVICE_WIDTH * 0.04,
                                letterSpacing: DEVICE_WIDTH * 0.002,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: DEVICE_HEIGHT * 0.02,
                    ),
                    Container(
                      width: DEVICE_HEIGHT,
                      padding: EdgeInsets.symmetric(
                        horizontal: DEVICE_WIDTH * 0.01,
                        vertical: DEVICE_HEIGHT * 0.02,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: DEVICE_WIDTH * 0.001,
                        ),
                        borderRadius:
                            BorderRadius.circular(DEVICE_WIDTH * 0.04),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: DEVICE_WIDTH * 0.03),
                            child: Image.asset(imagefacebook),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: DEVICE_WIDTH * 0.06),
                            child: Text(
                              'Continue_with_Facebook'.tr,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                letterSpacing: DEVICE_WIDTH * 0.002,
                                fontSize: DEVICE_WIDTH * 0.04,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
