import 'package:flutter/cupertino.dart';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/login_bloc.dart';
import '../view/login_form.dart';

LoginBloc loginBloc;

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('MyBLoCXLogin.LoginPage.build');
    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) {
            debugPrint('MyBLoCXLogin.LoginPage.build.BlocProvider.create');
            loginBloc = LoginBloc(
              authenticationRepository:
                  RepositoryProvider.of<AuthenticationRepository>(context),
            );
            return loginBloc;
          },
          child: LoginForm(),
        ),
      ),
    );
  }
}
