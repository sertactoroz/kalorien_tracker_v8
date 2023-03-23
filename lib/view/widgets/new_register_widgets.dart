import 'package:flutter/material.dart';
import 'package:kalorientracker/models/user_model.dart';
import 'package:kalorientracker/view/pages/login_screen.dart';
import 'package:kalorientracker/view/pages/register_screen.dart';
import 'package:provider/provider.dart';

import '../pages/providers/user_provider.dart';

class NewUserRegister extends StatefulWidget {
  const NewUserRegister({super.key});

  @override
  State<NewUserRegister> createState() => _LoginRegisterButton();
}

class _LoginRegisterButton extends State<NewUserRegister> {
  late TextEditingController usernameController;
  late TextEditingController passwordController;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    usernameController =
        TextEditingController(text: "umutcanbostanci@gmail.com");
    passwordController = TextEditingController(text: "12345678");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _textField(usernameController, "Username"),
              _textField(passwordController, "Password"),
              const SizedBox(
                height: 10,
              ),
              _button(() async {
                try {
                  if (_formKey.currentState!.validate()) {
                    await userProvider.addUser(
                      UserModel(
                          email: usernameController.text,
                          password: passwordController.text),
                    );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  }
                } catch (e) {
                  print(e.toString());
                }
              }, "Register"),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const RegisterScreen(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(0.0, 1.0);
                        const end = Offset.zero;
                        final tween = Tween(begin: begin, end: end);
                        final offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                child: const Text('Login'),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              // Column(
              //   children: [FruitSearchBar()],
              // )
            ],
          ),
        ));
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
    return SizedBox(
        width: 150,
        height: 42,
        child: OutlinedButton(
          onPressed: onPressed,
          child: Text(text),
        ));
  }
}

class UserCredential {}
