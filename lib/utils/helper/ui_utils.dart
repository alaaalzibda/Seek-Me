import 'package:flutter_svg/svg.dart';

import '../../general_exports.dart';

void hideKeyboard() {
  WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
}

dynamic isTablet(dynamic tabletValue, dynamic mobileValue) {
  if (DEVICE_WIDTH > 600) {
    return tabletValue;
  } else {
    return mobileValue;
  }
}

int setColor(String? color) {
  if (color == null || color.isEmpty) {
    return AppColors.white;
  }
  final String stringColor = '0xFF${color.replaceAll('#', '')}';
  final int newColor = int.parse(stringColor);
  return newColor;
}

String getFont() => isEnglish() ? 'Outfit' : 'Expo-Arabic';

String getSemiBoldFont() => isEnglish() ? 'Outfit-SemiBold' : 'Expo-Arabic';

bool isEnglish() => Get.find<AppLanguageController>().appLocale == 'en';

void openPopUp(Widget? widget) {
  Get.bottomSheet(
    widget!,
    isScrollControlled: true,
    isDismissible: false,
    enableDrag: false,
  );
}

bool shouldOpenForceUpdate() {
  final MyAppController myAppController = Get.find<MyAppController>();
  final int buildNumber = int.parse(myAppController.buildNumber!);
  // if (myAppController.userData[keyReleaseStatus] > buildNumber) {
  //   openDefaultSheet(
  //     icon: 'iconForceUpdate',
  //     title: 'new_version_available'.tr,
  //     subTitle: 'you_have_to_update'.tr,
  //     buttonOneText: 'upgrade_now'.tr,
  //     buttonOnePress: () async {
  //       final Uri uri = Uri.parse(
  //         Platform.isAndroid
  //             ? myAppController.userData[keyAndroidStoreLink]
  //             : myAppController.userData[keyIosStoreLink],
  //       );
  //       if (await canLaunchUrl(uri)) {
  //         await launchUrl(
  //           uri,
  //           mode: LaunchMode.externalApplication,
  //         );
  //       }
  //     },
  //     buttonTwoText: 'not_now'.tr,
  //   );
  //   return true;
  // }
  return false;
}
