import 'package:flutter/material.dart';
import './LoginBloc.dart';

class LoginBlocProvider extends InheritedWidget {
  final LoginBloc _loginBloc = LoginBloc();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  // TODO:: test when I get rid of this block.
  LoginBlocProvider({
    Key key,
    Widget child,
  }) : super(key: key, child: child);

  static LoginBloc blocOf(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(LoginBlocProvider) as LoginBlocProvider)._loginBloc;
  }
}
