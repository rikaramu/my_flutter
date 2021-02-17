import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('MyHome.build');
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'my_flutter app',
              style: TextStyle(
                fontSize: 32.0,
              ),
            ),
            SizedBox(height: 20.0),
            CupertinoButton(
              color: CupertinoColors.systemRed,
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 36.0),
              child: Text(
                'start',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) => _buildActionSheet(context),
                );
              },
            ),
            SizedBox(height: 20.0),
            CupertinoButton(
              color: CupertinoColors.systemYellow,
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 36.0),
              child: Text(
                'start#2',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) => _buildActionSheet2(context),
                );
              },
            ),
            SizedBox(height: 20.0),
            CupertinoButton(
              color: CupertinoColors.systemGreen,
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 36.0),
              child: Text(
                'States',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) => _buildASStates(context),
                );
              },
            ),
            SizedBox(height: 20.0),
            CupertinoButton(
              color: CupertinoColors.systemGreen,
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 36.0),
              child: Text(
                'BLoC examples',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) => _buildASBlocExamples(context),
                );
              },
            ),
            SizedBox(height: 20.0),
            CupertinoButton(
              color: CupertinoColors.systemGreen,
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 36.0),
              child: Text(
                'fluttersamples.com',
                style: TextStyle(fontSize: 24.0),
              ),
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) => _buildASfluttersamples(context),
                );
              },
            ),
            SizedBox(height: 20.0),
            CupertinoButton(
              color: CupertinoColors.systemIndigo,
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 36.0),
              child: Text(
                'riverpod.dev',
                style: TextStyle(fontSize: 24.0),
              ),
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) => _buildASriverpod(context),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  _buildActionSheet(context) {
    return CupertinoActionSheet(
      title: Text(
        'my_flutter',
        style: TextStyle(
          fontSize: 24.0,
        ),
      ),
      message: Text(
        'explore by topics',
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
      actions: [
        CupertinoActionSheetAction(
          child: Text('riverpod'),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/myriverpod');
          },
          isDefaultAction: true,
        ),
        CupertinoActionSheetAction(
          child: Text('Tab'),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/mytab');
          },
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: Text('Cancel'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  _buildActionSheet2(context) {
    return CupertinoActionSheet(
      actions: [
        CupertinoActionSheetAction(
          child: Text('i18n'),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/myi18n');
          },
          isDefaultAction: true,
        ),
        CupertinoActionSheetAction(
          child: Text('i18n'),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/myi18n');
          },
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: Text('Cancel'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  _buildASStates(context) {
    return CupertinoActionSheet(
      title: Text(
        'State Management',
        style: TextStyle(
          fontSize: 24.0,
        ),
      ),
      message: Text(
        'There are a lot of state management library',
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
      actions: [
        CupertinoActionSheetAction(
          child: Text('provider'),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/myprovider');
          },
          isDefaultAction: true,
        ),
        CupertinoActionSheetAction(
          child: Text('riverpod'),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/myriverpod');
          },
        ),
        CupertinoActionSheetAction(
          child:
              Text('BLoC (not done yet, find way to update text/title/word)'),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/mybloc');
          },
        ),
        CupertinoActionSheetAction(
          child: Text('Cubit Weather App'),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/mycubitweatherapp');
          },
        ),
        CupertinoActionSheetAction(
          child: Text('BLoC Weather App'),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/myblocweatherapp');
          },
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: Text('Cancel'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  _buildASBlocExamples(context) {
    return CupertinoActionSheet(
      title: Text('BLoC examples', style: TextStyle(fontSize: 24.0)),
      actions: [
        CupertinoActionSheetAction(
          child: Text('Login'),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/myblocxlogin');
          },
        ),
        CupertinoActionSheetAction(
          child: Text('Firebase Login'),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/myblocxfirebaselogin');
          },
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: Text('Cancel'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  _buildASfluttersamples(context) {
    return CupertinoActionSheet(
      title: Text('fluttersamples.com', style: TextStyle(fontSize: 24.0)),
      actions: [
        CupertinoActionSheetAction(
          child: Text('bloclibrary'),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/myfsbloclibrary');
          },
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: Text('Cancel'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  _buildASriverpod(context) {
    return CupertinoActionSheet(
      title: Text('riverpod.dev', style: TextStyle(fontSize: 24.0)),
      actions: [
        CupertinoActionSheetAction(
          child: Text('counter'),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/myrpcounter');
          },
        ),
        CupertinoActionSheetAction(
          child: Text('todos'),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/myrptodos');
          },
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: Text('Cancel'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
