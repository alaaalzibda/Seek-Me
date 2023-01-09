import 'package:carousel_slider/carousel_slider.dart';

import '../../general_exports.dart';
import 'slider_controller.dart';

class SliderComponent extends StatelessWidget {
  const SliderComponent({
    required this.images,
    this.height,
    this.header,
    this.activeDotColor,
    //   this.boxFit = BoxFit.cover,
    //this.gradientImage = imageTopBlackGradient,
    Key? key,
  }) : super(key: key);

  final List<dynamic> images;
  final double? height;
  final int? activeDotColor;
  final Widget? header;
  // final String gradientImage;
  //final BoxFit boxFit;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SliderController>(
      init: SliderController(),
      builder: (SliderController controller) => Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(
                DEVICE_WIDTH * 0.04,
              ),
            ),
            child: Stack(
              children: <Widget>[
                CarouselSlider(
                  options: CarouselOptions(
                    height: height ?? DEVICE_HEIGHT * 0.46,
                    enlargeCenterPage: true,
                    autoPlay: images.length.isGreaterThan(1),
                    viewportFraction: 1,
                    onPageChanged: controller.onPageUpdated,
                    scrollPhysics: images.length.isGreaterThan(1)
                        ? const BouncingScrollPhysics()
                        : const NeverScrollableScrollPhysics(),
                  ),
                  items: images
                      .map(
                        (dynamic image) => SizedBox(
                          //image: image,
                          width: DEVICE_WIDTH,
                          //fit: boxFit,
                          height: height ?? DEVICE_HEIGHT * 0.46,
                        ),
                      )
                      .toList(),
                  carouselController: CarouselController(),
                ),
              ],
            ),
          ),
          // Visibility(
          //   visible: gradientImage.isNotEmpty,
          //   child: Image.asset(
          //     gradientImage,
          //     width: DEVICE_WIDTH,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Visibility(
            visible: images.length.isGreaterThan(1),
            child: Positioned(
              bottom: DEVICE_HEIGHT * .015,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: images.asMap().entries.map(
                  (MapEntry<int, dynamic> entry) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: controller.current == entry.key
                          ? DEVICE_HEIGHT * 0.032
                          : DEVICE_WIDTH * 0.025,
                      height: DEVICE_WIDTH * 0.025,
                      margin: EdgeInsets.only(
                        top: DEVICE_WIDTH * 0.02,
                        left: DEVICE_WIDTH * 0.007,
                        right: DEVICE_WIDTH * 0.007,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          DEVICE_WIDTH * 0.01,
                        ),
                        color: (Color(
                          controller.current == entry.key
                              ? (activeDotColor ?? AppColors.black)
                              : AppColors.white,
                        )).withOpacity(1),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 77,
              vertical: DEVICE_HEIGHT * 0.08,
            ),
            child: header,
          ),
        ],
      ),
    );
  }
}
