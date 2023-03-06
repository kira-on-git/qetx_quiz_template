//app_routes.dart
//маршруты для перехода с одного screen на другой
//In GetX before navigating from one screen to another we require routes.

import 'package:get/get.dart';

import 'app_bindings.dart';
import 'second_screeen.dart';
import 'welcome_screen.dart';

//* named routs */
//* names of routs */
class AppRouts {
  static const home = '/home';
  // static const welcomeRoute = '/welcome_screen';
  static const secondRoute = '/second_screen';
}

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRouts.home,
      page: () => const WelcomeScreen(),
      binding: AppBindings(),
    ),
    GetPage(
      name: AppRouts.secondRoute,
      page: () => const SecondScreen(),
      binding: AppBindings(),
    ),
  ];
}
