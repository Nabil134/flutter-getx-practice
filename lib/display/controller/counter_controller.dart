import 'package:get/get.dart';

class CounterController extends GetxController{
  var count= 0;
  /*increment start here*/
  void increment(){
    count++;
    update();
  }
  /*increment end here*/
/*decrement start here*/
  void decrement(){
    count--;
    update();
  }
/*decrement end here*/
}