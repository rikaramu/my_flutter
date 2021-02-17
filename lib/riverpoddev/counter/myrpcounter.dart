import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider((ref) => 0);

class MyRPCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('MyRPCounter.build');
    return ProviderScope(
      child: MyRPCounterScope(),
    );
  }
}

class MyRPCounterScope extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('MyRPCounterScope.build');    
    return CupertinoPageScaffold(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer(
                builder: (context, watch, _) {
                  debugPrint('MyRPCounterScope.build.Consumer.builder called');
                  final count = watch(counterProvider).state;
                  return Text('$count');
                },
              ),
              _buildText(),
              SizedBox(height: 20.0),
              CupertinoButton(
                color: CupertinoColors.systemBlue,
                child: Text('Change first text'),
                onPressed: () {
                  debugPrint('MyRPCounterScope.build.onpressed');
                  context.read(counterProvider).state++;
                },
              ),
            ],
          ),
        ),
      );
  }

  _buildText() {
    debugPrint('MyRPCounterScope._buildText');
    return Text('testing');
  }
}

