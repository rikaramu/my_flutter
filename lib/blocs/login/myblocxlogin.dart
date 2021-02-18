import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:user_repository/user_repository.dart';

import 'authentication/bloc/authentication_bloc.dart';
import 'pages/home.dart';
import 'pages/login.dart';
import 'pages/splash.dart';

class MyBLoCXLogin extends StatelessWidget {
  final AuthenticationRepository authenticationRepository =
      AuthenticationRepository();
  final UserRepository userRepository = UserRepository();

  _buildNavigator() {
    var routes = <String, WidgetBuilder>{
      '/': (BuildContext context) => _buildMyBlocXLoginApp(context),
      '/home': (BuildContext context) => Home(),
      '/splash': (BuildContext context) => Splash(),
      '/login': (BuildContext context) => Login(),
    };
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
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
    debugPrint('MyBLoCXLogin.__buildMyBlocXLoginApp');
    return RepositoryProvider.value(
      value: authenticationRepository,
      child: BlocProvider(
        create: (_) => AuthenticationBloc(
          authenticationRepository: authenticationRepository,
          userRepository: userRepository,
        ),
        child: BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            switch (state.status) {
              case AuthenticationStatus.authenticated:
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/home', ModalRoute.withName('/home'));
                break;
              case AuthenticationStatus.unauthenticated:
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/login', ModalRoute.withName('/login'));
                break;
              default:
                break;
            }
          },
          child: Splash(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('MyBLoCXLogin.build');
    return _buildNavigator();
  }
}
