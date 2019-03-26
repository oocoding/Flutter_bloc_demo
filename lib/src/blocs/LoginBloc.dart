import 'package:rxdart/rxdart.dart';
import './UsernameValidator.dart';
import './PasswordValidator.dart';
import 'dart:async';

class LoginBloc extends Object with UsernameValidator, PasswordValidator {

  final _usernameController = BehaviorSubject<String>();
  Function(String) get editUsername => _usernameController.sink.add;
  Stream<String> get usernameStream =>
      _usernameController.stream.transform(usernameValidate);


  final _passwordController = BehaviorSubject<String>();
  Function(String) get editPassword => _passwordController.sink.add;
  Stream<String> get passwordStream => _passwordController.stream.transform(passwordValidate);


  Stream<bool> get submitValidate  => Observable.combineLatest2(usernameStream, passwordStream,(String name, String pwd){
    print("Get $name--$pwd");
    return true;
  });


  void submit(){
    print("发送网络请求给服务器");
    print("submit value:${_usernameController.value}");
    print("submit value:${_passwordController.value}");
  }

  void dispose() {
    _usernameController.close();
    _passwordController.close();
  }
}

