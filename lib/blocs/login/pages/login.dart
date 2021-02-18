import 'package:flutter/cupertino.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('MyBLoCXLogin.Login.build');
    return const CupertinoPageScaffold(
      child: Center(
        child: Text('LOGIN'),
      ),
    );
  }
}