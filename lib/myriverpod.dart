import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// if use ProviderScope as parent of MyApp(), state will keep persist at 
// that level EXCEPT StateProvider.autoDispose for titleProvider will be reset 
// when re-build
final titleProvider = StateProvider.autoDispose((_) => 'My Riverpod');
final wordProvider = StateProvider((_) => 'Hello');

class MyRiverpod extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    debugPrint('MyRiverpod.build');
    final String title = watch(titleProvider).state;
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title),
              SizedBox(height: 16.0),
              Consumer(builder: (context, watch, _) {
                debugPrint('MyRiverpod.build.Consumer => word');
                final word = watch(wordProvider).state;
                return Text('$word');
              }),
              SizedBox(height: 16.0),
              CupertinoButton(
                color: CupertinoColors.systemBlue,
                child: Text('Change title'),
                onPressed: () {
                  var prev = context.read(titleProvider).state;
                  context.read(titleProvider).state = 'Hey $prev';
                },
              ),
              SizedBox(height: 16.0),
              CupertinoButton(
                color: CupertinoColors.activeOrange,
                child: Text('Change word'),
                onPressed: () {
                  var prev = context.read(wordProvider).state;
                  context.read(wordProvider).state = '$prev, world';
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
