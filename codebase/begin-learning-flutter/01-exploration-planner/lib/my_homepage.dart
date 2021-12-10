import 'package:exploration_planner/progress.dart';
import 'package:exploration_planner/task_list.dart';
import 'package:flutter/material.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Space Exploration Planner!'),
      ),
      body: Column(
        children: const [
          Progress(),
          TaskList(),
        ],
      ),
    );
  }
}
