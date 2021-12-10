import 'package:exploration_planner/task_item.dart';
import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TaskItem(
          label: 'Load rocket with supplies',
        ),
        TaskItem(
          label: 'Launch rocket',
        ),
        TaskItem(
          label: 'Circle the home planet',
        ),
        TaskItem(
          label: 'Head out to the first moon',
        ),
        TaskItem(
          label: 'Launch moon lander',
        ),
      ],
    );
  }
}
