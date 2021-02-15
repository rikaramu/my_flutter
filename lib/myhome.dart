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
            SizedBox(
              height: 20.0,
            ),
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
            SizedBox(
              height: 20.0,
            ),
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
}
