import 'package:flutter/material.dart';
import 'package:startup_namer/random_words.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Startup Namer'),
      ),
      body: const Center(
        child: RandomWords(),
      ),
    );
  }
}
