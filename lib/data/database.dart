import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference the box
  final _myBox = Hive.box('myBox');

  // run this if this is the first time ever opening this app
  void createInitialData() {
    toDoList = [
      ['Do homework', false],
      ['Read a book', false],
      ['Go to the gym', false],
    ];
  }

  // load the data from database when app starts
  void loadData() {
    toDoList = _myBox.get('ToDoList');
  }

  // update the database
  void updateDataBase() {
    _myBox.put('ToDoList', toDoList);
  }
}
