import 'package:flutter/cupertino.dart';

class MyTab extends StatelessWidget {
  Widget _tabviewBuilder(context, i) {
    return CupertinoTabView(
      builder: (context) => CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: (i == 0) ? Text('Articles') : Text('Views'),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text(
                  'Tab #$i',
                  style: (i == 0)
                      ? CupertinoTheme.of(context)
                          .textTheme
                          .actionTextStyle
                          .copyWith(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          )
                      : CupertinoTheme.of(context)
                          .textTheme
                          .navLargeTitleTextStyle,
                ),
                CupertinoButton(
                  child: Text('Tab $i'),
                  onPressed: () {
                    debugPrint('press $i');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('MyTab.build');
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book_solid),
            label: 'Articles',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.eye_solid),
            label: 'Views',
          ),
        ],
      ),
      tabBuilder: _tabviewBuilder,
    );
  }
}
