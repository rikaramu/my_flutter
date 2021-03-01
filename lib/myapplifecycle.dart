import 'dart:async';

import 'package:flutter/cupertino.dart';

//follow https://www.youtube.com/watch?v=a0RG0sxfSjk


class MyAppLifecycle extends StatefulWidget {
  @override
  _MyAppLifecycleState createState() => _MyAppLifecycleState();
}

class _MyAppLifecycleState extends State<MyAppLifecycle>
    with WidgetsBindingObserver {
  Timer timer;
  int count = 0;
  bool active = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    timer = Timer.periodic(
      Duration(seconds: 1),
      (tm) {
        if (active) {
          setState(() {
            count += 1;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.resumed) {
      debugPrint('didChangeAppLifecycleState - resumed');
      active = true;
    } else if (state == AppLifecycleState.paused) {
      debugPrint('didChangeAppLifecycleState - paused');
      active = false;
    } else if (state == AppLifecycleState.inactive) {
      debugPrint('didChangeAppLifecycleState - inactive');
      active = false;
    } else if (state == AppLifecycleState.detached) {
      debugPrint('didChangeAppLifecycleState - detached');
    } else {
      debugPrint('didChangeAppLifecycleState - huh, what is this state!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('App Lifecycle'),
      ),
      child: SafeArea(
        child: Center(child: Text('$count')),
      ),
    );
  }
}
