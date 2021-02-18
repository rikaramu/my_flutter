import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('MyBLoCXLogin.Home.build');
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 10),
            Text('https://bloclibrary.dev/#/flutterlogintutorial'),
            Spacer(flex: 1),
            CupertinoButton(
              child: Text('push'),
              onPressed: () {
                debugPrint('push');
                Navigator.of(context).pushNamed('/splash');
              },
            ),
            CupertinoButton(
              child: Text('pop'),
              onPressed: () {
                debugPrint('pop');
                Navigator.of(context).maybePop();
              },
            ),
            Text(
                'https://github.com/felangel/bloc/tree/master/examples/flutter_login'),
            Spacer(flex: 10),
          ],
        ),
      ),
    );
  }
}
