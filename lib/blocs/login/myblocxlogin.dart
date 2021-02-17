import 'package:flutter/cupertino.dart';

class MyBLoCXLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 10),
            Text('https://bloclibrary.dev/#/flutterlogintutorial'),
            Spacer(flex: 1),
            Text(
                'https://github.com/felangel/bloc/tree/master/examples/flutter_login'),
            Spacer(flex: 10),
          ],
        ),
      ),
    );
  }
}
