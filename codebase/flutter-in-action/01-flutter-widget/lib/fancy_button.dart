import 'package:flutter/material.dart';

class FancyButton extends StatelessWidget {
  const FancyButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Colors.deepOrange,
      splashColor: Colors.orange,
      shape: const StadiumBorder(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 20.0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            RotatedBox(
              quarterTurns: 1,
              child: Icon(
                Icons.explore,
                color: Colors.amber,
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Text(
              'Add to Cart',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Pulse animator - custom widget - 09:03
