import 'package:flutter/cupertino.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('MyBLoCXLogin.Splash.build');
    return const CupertinoPageScaffold(
      child: Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}
