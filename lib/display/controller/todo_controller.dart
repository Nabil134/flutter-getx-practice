import 'package:get/get.dart';

class TodoController extends GetxController{
  var todos =<String>[].obs;
  /*addTodo start here*/
  void addTodo(String task){
    todos.add(task);
    update();
  }
/*addTodo end here*/
/*deleteTodo start here*/
  void deleteTodo(int index){
    todos.removeAt(index);
    update();
  }
/*deleteTodo end here*/
  void updateTodo(int index, String newTask) {
    if (index >= 0 && index < todos.length) {
      todos[index] = newTask;
      update(); // Notify listeners to update the UI
    }
  }


}