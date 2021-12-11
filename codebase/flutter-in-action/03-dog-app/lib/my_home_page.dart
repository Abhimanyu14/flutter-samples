import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yellow Lab'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            DogName(
              dogName: 'Rocky',
            ),
            SizedBox(
              height: 8.0,
            ),
            DogName(
              dogName: 'Bruno',
            ),
            SizedBox(
              height: 8.0,
            ),
            DogName(
              dogName: 'Nico',
            ),
            SizedBox(
              height: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}

class DogName extends StatelessWidget {
  const DogName({
    Key? key,
    required this.dogName,
  }) : super(key: key);

  final String dogName;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.lightBlueAccent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(dogName),
      ),
    );
  }
}
