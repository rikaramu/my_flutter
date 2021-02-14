import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyI18N extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('MyI18N.build');
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Center(
          child: Text('Testt'),
        ),
      ),
    );
  }
}
