import 'package:flutter/cupertino.dart';

import 'package:my_flutter/myhome.dart';
import 'package:my_flutter/myi18n.dart';
import 'package:my_flutter/mytab.dart';

void main() {
  runApp(MyApp());
}

const String app_title = 'my_flutter';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('MyApp.build');
    return CupertinoApp(
      title: app_title,
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue,
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(
            fontFamily: 'SourceSansPro',
            fontSize: 32.0,
            fontWeight: FontWeight.w700,
            color: CupertinoColors.darkBackgroundGray,
          ),
          navLargeTitleTextStyle: TextStyle(
            fontSize: 48.0,
            fontWeight: FontWeight.bold,
            color: CupertinoColors.activeBlue,
          ),
        ),
      ),
      home: MyHome(),
      // home: I18N(),
      routes: <String, WidgetBuilder>{
        '/myhome': (BuildContext context) => MyHome(),
        '/mytab': (BuildContext context) => MyTab(),
        '/myi18n': (BuildContext context) => MyI18N(),
      },
    );
  }
}
