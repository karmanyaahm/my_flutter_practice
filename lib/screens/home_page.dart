import 'package:flutter/material.dart';
import 'package:flutter_template_1/screens/second_page.dart';
import 'package:flutter_template_1/todo_management.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Returning data demo'),
      ),
      body: TodoList(),
    );
  }
}

class TodoList extends StatelessWidget {
  Widget build(BuildContext build) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            todos[index].title,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(todo: todos[index]),
              ),
            );
          },
        );
      },
    );
  }
}
