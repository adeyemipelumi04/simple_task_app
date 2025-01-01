import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  final _myBox = Hive.box("mybox");

  List toDoList = [];

  void createInitialData() {
    toDoList = [
      ["Welcome", false],
      ["Let's get started", false]
    ];
  }

  void loadData() {
    toDoList = _myBox.get("new");
  }

  void updateDataBase() {}
}
