import 'package:testvalley/presentation/k0_screen/k0_screen.dart';
import 'package:testvalley/presentation/k0_screen/binding/k0_binding.dart';
import 'package:testvalley/presentation/k1_screen/k1_screen.dart';
import 'package:testvalley/presentation/k1_screen/binding/k1_binding.dart';
import 'package:testvalley/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:testvalley/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String k0Screen = '/k0_screen';

  static const String k1Screen = '/k1_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: k0Screen,
      page: () => K0Screen(),
      bindings: [
        K0Binding(),
      ],
    ),
    GetPage(
      name: k1Screen,
      page: () => K1Screen(),
      bindings: [
        K1Binding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => K0Screen(),
      bindings: [
        K0Binding(),
      ],
    )
  ];
}
