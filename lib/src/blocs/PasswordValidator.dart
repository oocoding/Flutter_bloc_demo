import 'dart:async';

class PasswordValidator {
  static final passwordMinLength = 8;

  final passwordValidate = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if(password.length < passwordMinLength) {
        sink.addError("密码长度不能少于 $passwordMinLength");
      } else {
        sink.add(password);
      }
    },
  );
}
