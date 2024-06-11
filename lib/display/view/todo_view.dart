import 'package:flutter/material.dart';
import 'package:flutter_getx_example1/display/controller/todo_controller.dart';
import 'package:get/get.dart';

class TodoView extends StatelessWidget {
   TodoView({super.key});
  final TodoController todoController =Get.put(TodoController(),);

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Todo List'),
        centerTitle: true,
      ),
    body: Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          Expanded(
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                hintText: 'Add a new todo',
                border: OutlineInputBorder(

                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        IconButton(onPressed: (){
          if(textController.text.isNotEmpty){
            todoController.addTodo(textController.text);
            textController.clear();
          }
        }, icon: Icon(Icons.add),),
        ],),
      ),
      /*last portion start here*/
      Expanded(
        child: Obx(() => ListView.builder(
          itemCount: todoController.todos.length,
          itemBuilder: (context,index){
            print(textController.text);
            return ListTile(
              title: Text(todoController.todos[index]),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(icon: Icon(Icons.delete),
                    onPressed: (){
                    todoController.todos.removeAt(index);
                    },
                  ),
                  IconButton(icon: Icon(Icons.edit),
                    onPressed: (){
                    _showEditDialog(context, index);
                    },
                  ),
                ],
              ),
            );
          },
        ),),
      ),
      /*last portion end here*/
    ],),
    );
  }
  //
   void _showEditDialog(BuildContext context, int index) {
     TextEditingController editingController =
     TextEditingController(text: todoController.todos[index]);

     showDialog(
       context: context,
       builder: (BuildContext context) {
         return AlertDialog(
           title: Text('Edit Todo'),
           content: TextField(
             controller: editingController,
             decoration: InputDecoration(
               hintText: 'Enter new todo',
             ),
           ),
           actions: [
             TextButton(
               onPressed: () {
                 Navigator.pop(context);
               },
               child: Text('Cancel'),
             ),
             ElevatedButton(
               onPressed: () {
                 String newText = editingController.text.trim();
                 if (newText.isNotEmpty) {
                   todoController.updateTodo(index, newText);
                   Navigator.pop(context); // Close the dialog
                 }
               },
               child: Text('Save'),
             ),
           ],
         );
       },
     );
   }
//
}
