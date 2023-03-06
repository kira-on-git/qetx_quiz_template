import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_bindings.dart';
import 'app_routs.dart';
import 'welcome_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter GetX State Management Demo',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const WelcomeScreen(),
      initialBinding: AppBindings(),
      getPages: AppPages.pages,
    );
  }
}
