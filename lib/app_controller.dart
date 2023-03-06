//We will add the final count is equal to 0. obs.
//In GetX, to make a variable observable/наблюдаемой —
//ее изменении другие части нашего приложения,
//зависящие от нее, будут уведомлены/notified.
// Для этого просто добавить .obs к переменной при initialization.
// Затем  реализуем в MyHomePageController метод increment.

import 'package:get/get.dart';

class AppController extends GetxController {
  //0.obs - наблюдаемая переменная
  final count = 0.obs;
  increment() => count.value++;
}
