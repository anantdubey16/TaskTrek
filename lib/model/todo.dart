import 'package:flutter/material.dart';

class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      // ToDo(id: '01', todoText: 'Morning Exercise', isDone: true),
      // ToDo(id: '02', todoText: 'Buy Groceries', isDone: true),
      // ToDo(id: '03', todoText: 'Check Emails'),
      // ToDo(id: '04', todoText: 'Team Meeting'),
      // ToDo(id: '05', todoText: 'Work on mobile apps for 2 hours'),
      // ToDo(id: '06', todoText: 'Dinner with Jenny'),
    ];
  }
}

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final Function(ToDo) onToDoChanged;
  final Function(String) onDeleteItem;

  const ToDoItem({
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo.todoText ?? ""),
      leading: Checkbox(
        value: todo.isDone,
        onChanged: (value) {
          onToDoChanged(todo);
        },
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          onDeleteItem(todo.id ?? "");
        },
      ),
    );
  }
}