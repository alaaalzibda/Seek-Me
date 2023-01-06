import '../../components/index.dart';
import '../../general_exports.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});
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
                        OtpTextField(
                          digitcontroller: controller.digitOne,
                        ),
                        SizedBox(
                          width: DEVICE_WIDTH * 0.01,
                        ),
                        OtpTextField(
                          digitcontroller: controller.digitTwo,
                        ),
                        SizedBox(
                          width: DEVICE_WIDTH * 0.01,
                        ),
                        OtpTextField(
                          digitcontroller: controller.digitThree,
                        ),
                        SizedBox(
                          width: DEVICE_WIDTH * 0.01,
                        ),
                        OtpTextField(
                          digitcontroller: controller.digitFour,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: DEVICE_HEIGHT * 0.15,
                    ),
                    ElevatedButtonDiv(
                      title: 'Continue',
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
