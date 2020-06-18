import 'package:animation/screens/login/InputField.dart';
import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: <Widget>[
            InputField(
              hint: "UserName",
              obscure: false,
              iconData: Icons.person_outline,
            ),
            InputField(
              hint: "Password",
              obscure: true,
              iconData: Icons.lock_outline,
            )
          ],
        ),
      ),
    );
  }
}
