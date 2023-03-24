import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxpractice/counter_controller.dart';
import 'package:getxpractice/second_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(builder: (counterController) {
              return Text(
                counterController.count.toString(),
                style: TextStyle(fontSize: 30),
              );
            }),
            ElevatedButton(
                onPressed: () {
                  counterController.addCount();
                },
                child: Text('Add')),
            ElevatedButton(
                onPressed: () {
                  counterController.minusCount();
                },
                child: Text('Minus')),
            ElevatedButton(onPressed: () {
              Get.to(const SecondPage());
            }, child: const Text('Second Page'))
          ],
        ),
      ),
    );
  }
}
