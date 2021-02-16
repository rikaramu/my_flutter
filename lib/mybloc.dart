import 'package:flutter/cupertino.dart';

class MyBLoC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 20,
            ),
            CupertinoButton(
              color: CupertinoColors.systemBlue,
              child: Text('Weather'),
              onPressed: () {
                debugPrint('test');
              },
            ),
            Spacer(
              flex: 1,
            ),
            Text('BLoC'),
            Spacer(
              flex: 1,
            ),
            Text('BLoC'),
            Spacer(
              flex: 20,
            ),
          ],
        ),
      ),
    );
  }
}
