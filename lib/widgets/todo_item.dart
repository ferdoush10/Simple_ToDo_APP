import '../constants/colors.dart';
import 'package:flutter/material.dart';

import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;
  const ToDoItem({
    super.key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          //print('toDo item clicked');
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        tileColor: Colors.white60,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 18,
            color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            icon: const Icon(Icons.delete),
            iconSize: 18,
            onPressed: () {
              //  print('Click on delete item');
              onDeleteItem(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
