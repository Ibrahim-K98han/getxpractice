import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxpractice/counter_controller.dart';
import 'package:getxpractice/second_page.dart';
import 'package:getxpractice/welcome_message_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  CounterController counterController = Get.put(CounterController());
  WelcomeMessageController messageController = Get.put(WelcomeMessageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
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
            GetBuilder<WelcomeMessageController>(builder: (messageController) {
              return Text(
                messageController.message,
                style: const TextStyle(fontSize: 18),
              );
            }),
            ElevatedButton(
                onPressed: () {
                  messageController.changeMessage('add counter');
                  counterController.addCount();
                },
                child: const Text('Add')),
            ElevatedButton(
                onPressed: () {
                  messageController.changeMessage('minus counter');
                  counterController.minusCount();
                },
                child: const Text('Minus')),
            ElevatedButton(
                onPressed: () {
                  Get.to(SecondPage());
                },
                child: const Text('Second Page'))
          ],
        ),
      ),
    );
  }
}
