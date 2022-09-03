import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class calcy extends StatefulWidget {
  const calcy({Key? key}) : super(key: key);

  @override
  State<calcy> createState() => _calcyState();
}

class _calcyState extends State<calcy> {
  calModel s = Get.put(calModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator Use Getx"),
      ),
      body: GridView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              s.changeValue(index);
            },
            child: Container(
              color: Colors.purple.shade200,
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Obx(() => Text(
                    "${s.l[index].value}",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          );
        },
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      ),
    );
  }
}

class calModel extends GetxController {
  // List<RxString> l = List.filled(9, "".obs);

  List<RxString> l = [
    "".obs,
    "".obs,
    "".obs,
    "".obs,
    "".obs,
    "".obs,
    "".obs,
    "".obs,
    "".obs,
  ];

  void changeValue(int index) {
    l[index].value = "Hello";

    print(l);
  }
}
