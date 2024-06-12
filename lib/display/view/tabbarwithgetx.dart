import 'package:flutter/material.dart';
import 'package:flutter_getx_example1/display/controller/tabbar_controller.dart';
import 'package:get/get.dart';

class TabBarWithGetX extends StatelessWidget {
   TabBarWithGetX({super.key});
  final controller=Get.put(TabBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order'),
        centerTitle: true,
        /*TabBar start here*/
        bottom: TabBar(
          dividerColor: Colors.transparent,
          indicatorPadding: const EdgeInsets.symmetric(horizontal: 30),
          labelColor: Colors.green,
          unselectedLabelColor: Colors.grey,
          indicatorWeight: 4,
          indicatorColor: Colors.green,
          //indicatorSize: TabBarIndicatorSize.label,//the selected tab indicator will be sized according to the label of the tab.
          indicatorSize: TabBarIndicatorSize.tab,//the selected tab indicator will be sized to match the width of the tab.i
          controller: controller.tabController,
          tabs: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Active'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Completed'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Cancelled'),
            ),

          ],
        ),
        /*TabBar end here*/
      ),
   body:

   TabBarView(
controller: controller.tabController,
     children: [
       //Text('Nabil'),
       SizedBox(
         height: MediaQuery.of(context).size.height*0.8,
         child: GridView.builder(
             itemCount: 10,
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,
               mainAxisSpacing: 10,
               crossAxisSpacing: 10,

             ), itemBuilder: (context,index){
           return Container(
             height: 100,
             width: 100,
             margin: const EdgeInsets.all(8),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: Colors.red,
             ),
           );
         }),
       ),
       Text('Mohsin'),
       Text('Sanooj'),
     ],),
    );
  }
}
