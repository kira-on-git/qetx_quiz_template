// home_page.dart'

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:getx_project_named_routs/second_screeen.dart';

import 'app_controller.dart';
import 'app_routs.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  // 1. CONTROLLER создадим экземпляр HomePageController
  final AppController controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Flutter GetX State Management Demo"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      // 2. CALLBACK для вызова метода increment
      // из нашего controlle добавим floatActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            // Image.asset(
            //   "assets/logo.png",
            //   width: 300,
            // ),
            const FlutterLogo(
              size: 150,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            /****** TEXT c подчётом *****/
            // WRAP Text() into Obx,
            // чтобы обновлять текущий подсчёт в виджете Text()
            Obx(
              () => Text(
                '${controller.count.value}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            /****** SNACKBAR *****/
            // In this button, onPressed method we will add inside Get.
            // snackbar().
            // Also, we will add snackPosition and backgroundColor.
            // In the child method, we will add the text ‘Show Snackbar’.
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 18),
                  backgroundColor: Colors.teal,
                ),
                onPressed: () {
                  Get.snackbar('GetX Snackbar', 'Yay! Awesome GetX Snackbar',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.tealAccent);
                },
                child: const Text('Show Snackbar')),
            const SizedBox(
              height: 10,
            ),

            /****** ALERT *****/
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 18),
                  backgroundColor: Colors.teal,
                ),
                onPressed: () {
                  Get.defaultDialog(
                      title: 'GetX Alert',
                      middleText: 'Simple GetX alert',
                      textConfirm: 'Okay',
                      confirmTextColor: Colors.white,
                      textCancel: 'Cancel');
                },
                child: const Text('Show AlertDialog')),

            /****** NEXT PAGE *****/
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                    backgroundColor: Colors.teal,
                    minimumSize: const Size.fromHeight(40),
                  ),
                  child: Row(
                    children: const [
                      Spacer(),
                      Text("Go to next screen"),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Icon(
                        Icons.arrow_right_alt,
                        size: 40,
                      ))
                    ],
                  ),
                  onPressed: () {
                    //ссылка на страницу
                    Get.toNamed(AppRouts.secondRoute);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
