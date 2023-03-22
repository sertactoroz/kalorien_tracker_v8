import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {},
        child: const Text(
          "Login",
          style: TextStyle(fontSize: 20, color: Colors.green),
        ));
  }
}
