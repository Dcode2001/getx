import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {

    Model m =  Get.put(Model());


    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Demo"),
      ),
      body: Center(
        child: Column(
          children: [

            Obx(() => Text("${m.a.value}")),

            ElevatedButton(onPressed: () {

              m.increment();

            }, child: Text("Increment")),

            SizedBox(height: 20),

            ElevatedButton(onPressed: () {
              m.decrement();
            }, child: Text("Decrement")),

            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}

class Model extends GetxController
{

  RxInt a = 0.obs;

  void increment() {
    a.value = a.value+1;
    print(a);
  }
  void decrement() {
    a.value = a.value-1;
    print(a);
  }


}