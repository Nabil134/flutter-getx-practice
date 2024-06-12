import 'package:flutter/material.dart';
import 'package:flutter_getx_example1/display/view/counter_view.dart';
import 'package:flutter_getx_example1/display/view/tabbarWithStateful.dart';
import 'package:flutter_getx_example1/display/view/tabbar_view.dart';
import 'package:flutter_getx_example1/display/view/todo_view.dart';
import 'package:get/get.dart';

import 'view/tabbarwithgetx.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({super.key});

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          ElevatedButton(onPressed: (){
Get.to(CounterView(),);
          }, child: Text('Counter Example'),),
           const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Get.to(TodoView(),);
            }, child: Text('TodoList Example'),),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Get.to(TabBarViewScreen(),);
            }, child: Text('TabBar Example'),),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Get.to(TabBarWithStateful(),);
            }, child: Text('TabBar Example With Stateful'),),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Get.to(TabBarWithGetX(),);
            }, child: Text('TabBar With GetX'),),
          ],),
      ),
    );
  }
}
