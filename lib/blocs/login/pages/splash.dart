import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../authentication/authentication.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('MyBLoCXLogin.Splash.build');
    // ignore: close_sinks
    var authBloc = BlocProvider.of<AuthenticationBloc>(context);
    var userId = authBloc.state.user.id;
    debugPrint('userId = $userId');
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        debugPrint(
            'MyBLoCXLogin.Splash.build.BloListener.listen ${state.status}');
        switch (state.status) {
          case AuthenticationStatus.authenticated:
            Navigator.of(context).pushNamed('/home');
            break;
          case AuthenticationStatus.unauthenticated:
            Navigator.of(context).pushNamed('/login');
            break;
          default:
            break;
        }
      },
      child: const CupertinoPageScaffold(
        child: Center(
          child: CupertinoActivityIndicator(
            radius: 28.0,
          ),
        ),
      ),
    );
  }
}
