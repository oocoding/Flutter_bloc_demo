import 'package:flutter/material.dart';
import '../blocs/LoginBloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录页面"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            _buildUsernameField(),
            _buildPasswordField(),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            _buildSubmitButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildUsernameField() {
    print("Build username field");

    return StreamBuilder(
      stream: loginBloc.usernameStream,
      builder: (context, snapshot) {
        return TextField(
          onChanged: loginBloc.editUsername,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: "Username:",
            hintText: "you@example.com",
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget _buildPasswordField() {
    return StreamBuilder(
      stream: loginBloc.passwordStream,
      builder: (context, snapshot) {
        return TextField(
          onChanged: loginBloc.editPassword,
          decoration: InputDecoration(
            labelText: "Password:",
            hintText: "six characters at least",
            errorText: snapshot.error
          ),
        );
      },
    );
  }

  Widget _buildSubmitButton() {
    return RaisedButton(
      child: Text("Submit"),
      onPressed: () {},
    );
  }
}
