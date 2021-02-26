import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:user_repository/user_repository.dart';

import 'authentication/bloc/authentication_bloc.dart';
import 'pages/home.dart';
import 'pages/login/login.dart';
import 'pages/splash.dart';

// First try, for ref
class MyBLoCXLoginFirstTry extends StatelessWidget {
  final AuthenticationRepository authenticationRepository =
      AuthenticationRepository();
  final UserRepository userRepository = UserRepository();

  _buildNavigator(context) {
    debugPrint('MyBLoCXLogin._buildNavigator');
    var routes = <String, WidgetBuilder>{
      '/': (BuildContext context) => _buildMyBlocXLoginApp(context),
      '/home': (BuildContext context) => HomePage(),
      '/splash': (BuildContext context) => Splash(),
      '/login': (BuildContext context) => LoginPage(),
    };
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        debugPrint('MyBLoCXLogin._buildNavigator.onGenerateRoute');
        var builder = routes[settings.name];
        if (builder != null) {
          return CupertinoPageRoute(
            settings: settings,
            builder: builder,
          );
        }
        return null;
      },
    );
  }

  _buildMyBlocXLoginApp(context) {
    debugPrint('MyBLoCXLogin._buildMyBlocXLoginApp');
    return BlocProvider(
      create: (_) {
        debugPrint('MyBLoCXLogin._buildMyBlocXLoginApp.BlocProvider.create');
        return AuthenticationBloc(
          authenticationRepository: authenticationRepository,
          userRepository: userRepository,
        );
      },
      child: BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          debugPrint(
              'MyBLoCXLogin.__buildMyBlocXLoginApp.BlocProvider.listen ${state.status}');
          switch (state.status) {
            case AuthenticationStatus.authenticated:
              // Navigator.of(context).pushNamedAndRemoveUntil(
              //     '/home', ModalRoute.withName('/home'));
              Navigator.of(context).pushNamed('/home');
              break;
            case AuthenticationStatus.unauthenticated:
              // Navigator.of(context).pushNamedAndRemoveUntil(
              //     '/login', ModalRoute.withName('/login'));
              Navigator.of(context).pushNamed('/login');
              break;
            default:
              break;
          }
        },
        child: Splash(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('MyBLoCXLogin.build');
    return RepositoryProvider.value(
      value: authenticationRepository,
      child: _buildNavigator(context),
    );
  }
}

class MyBLoCXLogin extends StatelessWidget {
  final AuthenticationRepository authenticationRepository =
      AuthenticationRepository();
  final UserRepository userRepository = UserRepository();

  final routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => Splash(),
    '/home': (BuildContext context) => HomePage(),
    '/login': (BuildContext context) => LoginPage(),
  };

  @override
  Widget build(BuildContext context) {
    debugPrint('MyBLoCXLogin.build');
    return RepositoryProvider.value(
      value: authenticationRepository,
      child: BlocProvider(
        create: (_) {
          debugPrint('MyBLoCXLogin.build.BlocProvider.create');
          return AuthenticationBloc(
            authenticationRepository: authenticationRepository,
            userRepository: userRepository,
          );
        },
        child: Navigator(
          onGenerateRoute: (RouteSettings settings) {
            debugPrint('MyBLoCXLogin.build.BlocProvider.Navigator.onGenerateRoute');
            var builder = routes[settings.name];
            if (builder != null) {
              return CupertinoPageRoute(
                settings: settings,
                builder: builder,
              );
            }
            return null;
          },
        ),
      ),
    );
  }
}
