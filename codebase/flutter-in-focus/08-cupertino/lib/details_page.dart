import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({
    Key? key,
    required this.topic,
  }) : super(key: key);

  final String topic;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Details'),
      ),
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Text('A Switch'),
                    ),
                    CupertinoSwitch(
                      value: switchValue,
                      onChanged: (newValue) {
                        setState(() {
                          switchValue = newValue;
                        });
                      },
                    ),
                  ],
                ),
                CupertinoButton(
                  child: const Text('Launch Action Sheet!'),
                  onPressed: () {
                    showCupertinoModalPopup<int>(
                      context: context,
                      builder: (context) {
                        return CupertinoActionSheet(
                          title: const Text('Cupertino Choices!'),
                          actions: [
                            CupertinoActionSheetAction(
                              child: const Text('One !'),
                              isDefaultAction: true,
                              onPressed: () {
                                Navigator.pop(context, 1);
                              },
                            ),
                            CupertinoActionSheetAction(
                              child: const Text('Two !'),
                              onPressed: () {
                                Navigator.pop(context, 2);
                              },
                            ),
                            CupertinoActionSheetAction(
                              child: const Text('Three !'),
                              onPressed: () {
                                Navigator.pop(context, 3);
                              },
                            ),
                            CupertinoActionSheetAction(
                              child: const Text('Four !'),
                              onPressed: () {
                                Navigator.pop(context, 4);
                              },
                            ),
                            CupertinoActionSheetAction(
                              child: const Text('Five !'),
                              onPressed: () {
                                Navigator.pop(context, 5);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
