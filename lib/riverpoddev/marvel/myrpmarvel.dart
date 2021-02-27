import 'package:flutter/material.dart';

// ignore: unused_import
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_portal/flutter_portal.dart';

import 'screens/home.dart';

//user rikara301437671
//public key 735e43d36f3e4c1db05ec7c9cfa7081d
//private key 025bcbc21aa97401d67cd54e82e38d8903f8e9fc

class MyRPMarvel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('MyRPMarvel.build');
    return ProviderScope(
      // uncomment to mock the HTTP requests
      // overrides: [
      //   repositoryProvider.overrideWithProvider(
      //     Provider(
      //       (ref) => MarvelRepository(ref, client: FakeDio(null)),
      //     ),
      //   ),
      // ],
      child: MyRPMarvelNav(),
    );
  }
}

class MyRPMarvelNav extends HookWidget {
  final routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => Container(),
    // '/character': (c) => const CharacterView(),
    '/character': (c) => Container(),
  };

  @override
  Widget build(BuildContext context) {
    debugPrint('MyRPMarvelNav.build');
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        debugPrint('MyRPMarvelNav.build.GestureDetector.onTap');
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Navigator(
        onGenerateRoute: (RouteSettings settings) {
          debugPrint('MyRPMarvelNav.build#Navigator.onGenerateRoute');
          if (settings.name == null) return null;
          if (settings.name == '/')
            return MaterialPageRoute<void>(
              builder: (context) => Portal(child: Home()),
            );
          final split = settings.name.split('/');
          Widget result;
          if (settings.name.startsWith('/characters/') && split.length == 3) {
            result = ProviderScope(
              overrides: [
                // selectedCharacterId.overrideWithValue(split.last),
              ],
              // child: const CharacterView(),
              child: Container(),
            );
          }
          if (result == null)
            return MaterialPageRoute<void>(
              builder: (context) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'result == null',
                  ),
                ],
              ),
            );

          return MaterialPageRoute<void>(builder: (context) => result);
        },
      ),
    );
  }
}
