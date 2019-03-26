import 'package:rxdart/rxdart.dart';
import './UsernameValidator.dart';
import './PasswordValidator.dart';
import 'dart:async';

class LoginBloc extends Object with UsernameValidator, PasswordValidator {

  final _usernameController = StreamController<String>();
  Function(String) get editUsername => _usernameController.sink.add;
  Stream<String> get usernameStream =>
      _usernameController.stream.transform(usernameValidate);


  final _passwordController = StreamController<String>();
  Function(String) get editPassword => _passwordController.sink.add;
  Stream<String> get passwordStream => _passwordController.stream.transform(passwordValidate);

  void dispose() {
    _usernameController.close();
    _passwordController.close();
  }
}

