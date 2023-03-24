import 'package:get/get.dart';

class WelcomeMessageController extends GetxController{
  String message = '';

  void ChangeMessage(String msg){
    message = msg;
    update();
  }
}