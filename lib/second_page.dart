import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxpractice/counter_controller.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);
  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(builder: (counterController) {
              return Text(
                counterController.count.toString(),
                style: const TextStyle(fontSize: 30),
              );
            }),
            ElevatedButton(
                onPressed: () {
                  counterController.addCount();
                },
                child: const Text('Add')),
            ElevatedButton(
                onPressed: () {
                  counterController.minusCount();
                },
                child: const Text('Minus')),
          ],
        ),
      ),
    );
  }
}
