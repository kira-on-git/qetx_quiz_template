//start_binding.dart
//через класс Bindings инициализируем наши
//конртоллеры, репозитории, API и всё остальное,
//для того, чтобы вызывать их
//without having to call them directly from the view page.

import 'package:get/get.dart';

import 'app_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppController());
  }
}
