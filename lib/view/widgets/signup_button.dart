import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: OutlinedButton(
            onPressed: () {},
            child: const Text(
              "Sign Up",
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(1),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "If you have account => \n               Login",
                style: TextStyle(fontSize: 12, color: Colors.green[300]),
              ),
            ),
          ),
        )
      ],
    );
  }
}
