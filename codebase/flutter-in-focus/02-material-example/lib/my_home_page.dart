import 'package:flutter/material.dart';
import 'package:material_example/kitten.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Kittens'),
      ),
      body: ListView.builder(
        itemCount: kittens.length,
        itemExtent: 60.0,
        itemBuilder: _listViewBuilder,
      ),
    );
  }

  Widget _listViewBuilder(BuildContext context, int index) {
    return GestureDetector(
      onTap: () => showDialog(
        context: context,
        builder: (context) => _dialogBuilder(context, kittens[index]),
      ),
      child: Container(
        padding: const EdgeInsets.only(
          left: 16.0,
        ),
        alignment: Alignment.centerLeft,
        child: Text(
          kittens[index].name,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }

  Widget _dialogBuilder(BuildContext context, Kitten kitten) {
    ThemeData localTheme = Theme.of(context);

    return SimpleDialog(
      children: [
        Image.network(
          kitten.imageUrl,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                kitten.name,
                style: localTheme.textTheme.headline6,
              ),
              Text(
                '${kitten.age} months old',
                style: localTheme.textTheme.bodyText1?.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                kitten.description,
                style: localTheme.textTheme.bodyText2,
              ),
              const SizedBox(
                height: 16.0,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Wrap(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancel'),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Adopt'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
