import 'package:flutter/material.dart';

class TabBarViewScreen extends StatelessWidget {
  const TabBarViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 25),
              labelColor: Colors.green,
              unselectedLabelColor: Colors.grey,
              dividerColor: Colors.white,
              indicatorWeight: 5,
              indicatorColor: Colors.green,
              //indicatorSize: TabBarIndicatorSize.label,//the selected tab indicator will be sized according to the label of the tab.
              indicatorSize: TabBarIndicatorSize.tab,//the selected tab indicator will be sized to match the width of the tab.
              tabs: [
                Text('Active'),
                Text('Completed'),
                Text('Cancelled'),

              ],
            ),
            title: Text('Orders'),
            centerTitle: true,
          ),
       body:TabBarView(children: [
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
        ),);
  }
}
