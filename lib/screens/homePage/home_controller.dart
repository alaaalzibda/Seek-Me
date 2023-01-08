import '../../general_exports.dart';

class HomeController extends GetxController {
  List<dynamic> list = <dynamic>[
    {
      keyImage: imageSliderPerson,
      keyColor: Colors.amber,
    },
    {
      keyImage: imageSliderPerson,
      keyColor: Colors.deepPurpleAccent,
    },
    {
      keyImage: imageSliderPerson,
      keyColor: Colors.amber,
    },
    {
      keyImage: imageSliderPerson,
      keyColor: Colors.deepPurpleAccent,
    },
  ];

  List<dynamic> categories = <dynamic>[
    {
      keyImage: imageCategoryOne,
      keyCategory: 'Salon for Women',
    },
    {
      keyImage: imageCategoryTwo,
      keyCategory: 'Tailor',
    },
    {
      keyImage: imageCategoryThree,
      keyCategory: 'Massage for Men',
    },
    {
      keyImage: imageCategoryFour,
      keyCategory: 'Salon for Men',
    },
    {
      keyImage: imageCategoryFive,
      keyCategory: 'Home Repairs',
    },
    {
      keyImage: imageCategorySix,
      keyCategory: 'AC Service & Repair',
    },
  ];

  int current = 1;

  void onPageUpdated(int index, dynamic reason) {
    current = index;
    update();
  }
}
