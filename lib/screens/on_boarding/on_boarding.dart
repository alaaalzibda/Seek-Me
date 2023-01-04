import 'package:seek_me/general_exports.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<OnBoardingController>(
          init: OnBoardingController(),
          builder: (OnBoardingController controller) {
            return Stack(
              children: [
                PageView.builder(
                  controller: controller.controller,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: controller.onPageChanged,
                  itemCount: controller.introScreens.length,
                  itemBuilder: ((context, index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "${controller.introScreens[index][keyImage]}",
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 180),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Wrap(
                              children: [
                                Text(
                                  "${controller.introScreens[controller.currentIndex][keyTitle]}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: fontH1(),
                                    color: Colors.deepPurpleAccent,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
                Positioned(
                  top: 90,
                  right: 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30, left: 10),
                        child: Visibility(
                          visible: controller.currentIndex <
                              controller.introScreens.length - 1,
                          child: InkWell(
                            // onTap: controller.onTap,
                            child: Text(
                              'Skip'.tr,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        controller.introScreens.length,
                        (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 400),
                          height: 5,
                          width: controller.currentIndex == index ? 25 : 10,
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 55,
                    ),
                    ElevatedButton(
                        onPressed: controller.onPressed,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.deepPurpleAccent),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Icon(Icons.arrow_forward_ios_rounded),
                        )),
                    const SizedBox(
                      height: 90,
                    )
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
