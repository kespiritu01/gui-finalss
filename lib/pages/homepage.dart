import 'package:flutter/material.dart';
import '../util/todo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

 class _HomePageState extends State<HomePage> {
  List toDoList = [];

  void checkBoxChanged(bool? value, int index){
    setState(() {
      toDoList[index] [1] = !toDoList[index] [1];
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('To Do App'),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index){
          return ToDoTile(
            taskName: toDoList[index][0], 
            taskCompleted: toDoList[index][1], 
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
 }