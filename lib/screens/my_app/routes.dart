import '../../general_exports.dart';

List<GetPage<dynamic>> appRoutes = <GetPage<dynamic>>[
  GetPage<Splash>(
    name: routeSplash,
    page: () => const Splash(),
  ),
];
