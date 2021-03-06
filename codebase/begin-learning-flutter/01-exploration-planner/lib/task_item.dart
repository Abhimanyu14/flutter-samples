import 'package:flutter/material.dart';

class TaskItem extends StatefulWidget {
  const TaskItem({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _value,
          onChanged: (newValue) => setState(() {
            _value = newValue;
          }),
        ),
        Text(widget.label),
      ],
    );
  }
}
