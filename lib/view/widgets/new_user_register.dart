import 'package:flutter/material.dart';
import 'package:kalorientracker/view/pages/login_screen.dart';

class NewUserRegister extends StatefulWidget {
  const NewUserRegister({super.key});

  @override
  State<NewUserRegister> createState() => _NewUserRegisterState();
}

class _NewUserRegisterState extends State<NewUserRegister> {
  late TextEditingController usernameController;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    usernameController =
        TextEditingController(text: "umutcanbostanci@gmail.com");
    passwordController = TextEditingController(text: "12345678");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _textField(usernameController, "Username"),
        _textField(passwordController, "Password"),
        _button(() async {
          // FirebaseAuth auth = FirebaseAuth.instance;
          try {
            // UserCredential credential =
            //     await auth.signInWithEmailAndPassword(
            //         email: usernameController.text,
            //         password: passwordController.text);
            // print(credential);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          } catch (e) {
            print(e.toString());
          }
        }, "Register"),
        // FirebaseAuth auth = FirebaseAuth.instance;
        //   try {
        //     UserCredential credential =
        //         await auth.createUserWithEmailAndPassword(
        //             email: usernameController.text,
        //             password: passwordController.text);
        //     print(credential);
        //   } catch (e) {
        //     print(e.toString());
        //   }
        // }, "Register"),
      ],
    );
  }

  Widget _textField(TextEditingController controller, String label) => Padding(
        padding: const EdgeInsets.all(12.0),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              labelText: label,
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))),
        ),
      );

  Widget _button(Function() onPressed, String text) {
    return ElevatedButton(onPressed: onPressed, child: Text(text));
  }
}
