import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //DELETE BACK ARROW
        automaticallyImplyLeading: false,
        title: const Text("Second Page"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        //COLUMN
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              // TEXT
              child: Text(
                "The Flutter app developers at FlutterDevs have decades of industry experience under a single roof,"
                " and this empowers us to serve you with excellence.",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              //BUTTON
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                    backgroundColor: Colors.teal,
                    minimumSize: const Size.fromHeight(40),
                  ),
                  child: Row(
                    children: const [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(flex: 3, child: Text("Go to Home screen")),
                    ],
                  ),
                  onPressed: () {
                    Get.back();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
