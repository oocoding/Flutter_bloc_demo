import 'dart:async';

class UsernameValidator {
  final usernameValidate = StreamTransformer<String, String>.fromHandlers(
    handleData: (username, sink) {
      if(!username.contains("@")) {
        sink.addError("请输入一个正确的邮箱,你输入@试试");
      } else {
        sink.add(username);
      }
    },
  );
}
