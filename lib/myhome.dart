import 'package:flutter/cupertino.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('MyHome.build');
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Test'),
          ],
        ),
      ),
    );
  }
}
