import 'dart:math' as math;

import 'package:flutter/material.dart';

/// UniqueKey - To distinguish widgets
/// ValueKey - When we have a unique ID
/// ObjectKey - To create unique ID using combination of data
/// PageStorageKey - Page scroll position
/// GlobalKey
/// - 1. Allow widgets to change parents anywhere in the app
/// without losing state.
/// - 2. Used to access info from another widget
/// in completely different part of the widget tree.
class PositionedTiles extends StatefulWidget {
  const PositionedTiles({Key? key}) : super(key: key);

  @override
  _PositionedTilesState createState() => _PositionedTilesState();
}

class _PositionedTilesState extends State<PositionedTiles> {
  late List<Widget> tiles;
  late List<Widget> tiles1;

  @override
  void initState() {
    super.initState();
    tiles = [
      StatelessColourfulTile(
        color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
            .withOpacity(1.0),
      ),
      StatelessColourfulTile(
        color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
            .withOpacity(1.0),
      ),
    ];
    tiles1 = [
      StatefulColourfulTile(
        key: UniqueKey(),
      ),
      StatefulColourfulTile(
        key: UniqueKey(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    void swapTiles() {
      setState(() {
        tiles.insert(1, tiles.removeAt(0));
      });
      setState(() {
        tiles1.insert(1, tiles1.removeAt(0));
      });
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: tiles,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: tiles1,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.swap_horiz),
        onPressed: swapTiles,
      ),
    );
  }
}

class StatelessColourfulTile extends StatelessWidget {
  const StatelessColourfulTile({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return ColorTile(
      color: color,
    );
  }
}

class StatefulColourfulTile extends StatefulWidget {
  const StatefulColourfulTile({Key? key}) : super(key: key);

  @override
  _StatefulColourfulTileState createState() => _StatefulColourfulTileState();
}

class _StatefulColourfulTileState extends State<StatefulColourfulTile> {
  late Color color;

  @override
  void initState() {
    super.initState();
    color =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return ColorTile(
      color: color,
    );
  }
}

class ColorTile extends StatelessWidget {
  const ColorTile({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: color,
        child: const SizedBox(
          height: 80.0,
          width: 80.0,
        ),
      ),
    );
  }
}
