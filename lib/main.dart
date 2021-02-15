import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:my_flutter/myhome.dart';
import 'package:my_flutter/myi18n.dart';
import 'package:my_flutter/myprovider.dart';
import 'package:my_flutter/myriverpod.dart';
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
        primaryColor: CupertinoColors.systemIndigo,
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(
            fontFamily: 'SourceSansPro',
            fontSize: 20.0,
            color: CupertinoColors.black,
          ),
          navLargeTitleTextStyle: TextStyle(
            fontSize: 48.0,
            fontWeight: FontWeight.bold,
            color: CupertinoColors.activeBlue,
          ),
        ),
      ),
      home: MyHome(),
      routes: <String, WidgetBuilder>{
        '/myhome': (BuildContext context) => MyHome(),
        '/myriverpod': (BuildContext context) =>
            ProviderScope(child: MyRiverpod()),
        '/myprovider': (BuildContext context) => MyProvider(),
        '/mytab': (BuildContext context) => MyTab(),
        '/myi18n': (BuildContext context) => MyI18N(),
      },
    );
  }
}
