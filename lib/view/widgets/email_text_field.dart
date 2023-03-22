import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UserNameTextField extends StatelessWidget {
  const UserNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 50.0, right: 50, bottom: 10),
      child: TextField(
        // controller: controller,
        decoration: InputDecoration(
            labelText: "email",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
      ),
    );
  }
}
