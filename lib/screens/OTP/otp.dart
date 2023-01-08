import '../../components/textfield_otp.dart';
import '../../general_exports.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({super.key});

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<OtpController>(
          init: OtpController(),
          builder: (OtpController controller) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: DEVICE_WIDTH * 0.06),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: DEVICE_HEIGHT * 0.2,
                    ),
                    Text(
                      'verification_code'.tr,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: DEVICE_WIDTH * 0.07),
                    ),
                    SizedBox(
                      height: DEVICE_HEIGHT * 0.02,
                    ),
                    Text(
                      'verification_message'.tr,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        letterSpacing: DEVICE_WIDTH * 0.002,
                        fontSize: DEVICE_WIDTH * 0.03,
                      ),
                    ),
                    SizedBox(
                      height: DEVICE_HEIGHT * 0.02,
                    ),
                    Text(
                      '+91 6390168836',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: DEVICE_WIDTH * 0.04,
                      ),
                    ),
                    SizedBox(
                      height: DEVICE_HEIGHT * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextFieldOtp(
                          controller: controller.digitOne,
                          onChanged: (String value) {
                            controller.nextField(
                              value,
                              controller.pin2FocusNode,
                            );
                          },
                        ),
                        SizedBox(
                          width: DEVICE_WIDTH * 0.04,
                        ),
                        TextFieldOtp(
                          controller: controller.digitTwo,
                          focusNode: controller.pin2FocusNode,
                          onChanged: (String value) {
                            controller.nextField(
                              value,
                              controller.pin3FocusNode,
                            );
                          },
                        ),
                        SizedBox(
                          width: DEVICE_WIDTH * 0.04,
                        ),
                        TextFieldOtp(
                          controller: controller.digitThree,
                          focusNode: controller.pin3FocusNode,
                          onChanged: (String value) {
                            controller.nextField(
                              value,
                              controller.pin4FocusNode,
                            );
                          },
                        ),
                        SizedBox(
                          width: DEVICE_WIDTH * 0.04,
                        ),
                        TextFieldOtp(
                            controller: controller.digitFour,
                            focusNode: controller.pin4FocusNode,
                            onChanged: controller.onChanged),
                      ],
                    ),
                    SizedBox(
                      height: DEVICE_HEIGHT * 0.15,
                    ),
                    ElevatedButtonDiv(
                      title: 'continue'.tr,
                      color: Colors.deepPurpleAccent,
                      isButtonEnabled: controller.isButtonEnabeld,
                      onPress: () {},
                    )
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
