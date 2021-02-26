import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'blocs/firebaselogin/myblocxfirebaselogin.dart';
import 'blocs/login/myblocxlogin.dart';
import 'fluttersamples/bloclibrary/myfsbloclibrary.dart';
import 'myhome.dart';
import 'myi18n.dart';
import 'myprovider.dart';
import 'myriverpod.dart';
import 'mytab.dart';
import 'mybloc.dart';
import 'blocs/weather/mycubitweatherapp.dart';
import 'blocs/weather/myblocweatherapp.dart';
import 'riverpoddev/counter/myrpcounter.dart';
import 'riverpoddev/todos/myrptodos.dart';

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
        '/mytab': (BuildContext context) => MyTab(),
        '/myi18n': (BuildContext context) => MyI18N(),
        '/mybloc': (BuildContext context) => MyBLoC(),
        '/myprovider': (BuildContext context) => MyProvider(),
        '/myriverpod': (BuildContext context) =>
            ProviderScope(child: MyRiverpod()),
        '/mycubitweatherapp': (BuildContext context) => MyCubitWeatherApp(),
        '/myblocweatherapp': (BuildContext context) => MyBLoCWeatherApp(),
        '/myblocxlogin': (BuildContext context) => MyBLoCXLogin(),
        '/myblocxfirebaselogin': (BuildContext context) =>
            MyBLoCXFirebaseLogin(),
        '/myfsbloclibrary': (BuildContext context) => MyFSBlocLibrary(),
        '/myrpcounter': (BuildContext context) => MyRPCounter(),
        '/myrptodos': (BuildContext context) => MyRPTodosScope(),
      },
    );
  }
}
