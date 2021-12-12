import 'package:cupertino/details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.book_solid,
            ),
            label: 'Articles',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.eye_solid,
            ),
            label: 'Views',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle:
                    (index == 0) ? const Text('Articles') : const Text('Views'),
              ),
              child: Center(
                child: CupertinoButton(
                  child: Text(
                    'Tab $index',
                    style: CupertinoTheme.of(context)
                        .textTheme
                        .actionTextStyle
                        .copyWith(
                          fontSize: 32.0,
                        ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (context) {
                          return DetailsPage(
                            topic: (index == 0) ? 'Articles' : 'Views',
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}
