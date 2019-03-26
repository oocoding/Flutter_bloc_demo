import 'package:flutter/material.dart';
import './LoginBloc.dart';

class LoginBlocProvider extends InheritedWidget {

  final LoginBloc _loginBloc = LoginBloc();

  // 套路写法
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  // 套路写法
  LoginBlocProvider({
    Key key,
    @required Widget child,
  }) : super(key: key, child: child);

   // 套路写法, 为widget提供业务接口,提供 bloc 实例。
  static LoginBloc blocOf(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(LoginBlocProvider)
            as LoginBlocProvider)
        ._loginBloc;
  }
}
