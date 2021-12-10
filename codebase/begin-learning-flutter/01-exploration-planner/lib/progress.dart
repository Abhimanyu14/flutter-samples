import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('You are this far away from exploring the whole universe'),
        LinearProgressIndicator(
          value: 0,
        )
      ],
    );
  }
}
