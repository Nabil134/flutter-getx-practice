import 'package:flutter/material.dart';
import 'package:flutter_getx_example1/display/controller/counter_controller.dart';
import 'package:get/get.dart';

class CounterView extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            GetBuilder<CounterController>(
              builder: (controller){
                return
                Text('${counterController.count}') ;
              },
            ),

      ),
   floatingActionButton: Container(
     height: 100,
     width: double.infinity,
     color: Colors.grey,
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
       IconButton(onPressed: (){
         counterController.increment();
       }, icon: Container(
         padding: const EdgeInsets.all(8),
         decoration: BoxDecoration(
           color: Colors.blue,
           shape: BoxShape.circle,
         ),
           child: Icon(Icons.add),),),
       IconButton(onPressed: (){
         counterController.decrement();
       }, icon: Container( 
         padding: const EdgeInsets.all(8),
         decoration: BoxDecoration(
           color: Colors.blue,
           shape: BoxShape.circle,
         ),
           child: Icon(Icons.minimize),),),
     ],),
   ),
    );
  }
}
