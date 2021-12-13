import 'package:custom_painting/my_painter.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Painting'),
      ),
      body: Center(
        child: SizedBox(
          height: 200.0,
          width: 200.0,
          child: Container(
            child: CustomPaint(
              painter: MyPainter(),
            ),
            color: Colors.greenAccent,
          ),
        ),
      ),
    );
  }
}
