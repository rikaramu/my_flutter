import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class MyProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('MyProvider.build');
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Center(
          child: ChangeNotifierProvider(
            create: (BuildContext context) => MyChangeNotifier(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<MyChangeNotifier>(builder: (context, myChangeNotifier, child) {
                  debugPrint('MyProvider.build.Consumer => title');
                  return Text('${myChangeNotifier.title}');
                }),
                SizedBox(height: 16.0),
                Consumer<MyChangeNotifier>(builder: (context, myChangeNotifier, child) {
                  debugPrint('MyProvider.build.Consumer => word');
                  return Text('${myChangeNotifier.word}');
                }),
                SizedBox(height: 16.0),
                Consumer<MyChangeNotifier>(builder: (context, myChangeNotifier, child) {
                  return CupertinoButton(
                    color: CupertinoColors.systemBlue,
                    child: Text('Change title'),
                    onPressed: () {
                      myChangeNotifier.updateTitle();
                    },
                  );
                }),
                SizedBox(height: 16.0),
                Consumer<MyChangeNotifier>(builder: (context, myChangeNotifier, child) {
                  return CupertinoButton(
                    color: CupertinoColors.systemOrange,
                    child: Text('Change word'),
                    onPressed: () {
                      myChangeNotifier.updateWord();
                    },
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyChangeNotifier extends ChangeNotifier {
  String title = 'My provider';
  void updateTitle() {
    title = 'Hey $title';
    notifyListeners();
  }

  String word = 'Hello';
  void updateWord() {
    word = '$word, world';
    notifyListeners();
  }
}
