import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kalorientracker/view/pages/home_page.dart';
import 'package:kalorientracker/view/widgets/email_text_field.dart';
import 'package:kalorientracker/view/widgets/login_button.dart';
import 'package:kalorientracker/view/widgets/password_text.dart';
import 'package:kalorientracker/view/widgets/register_button.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LottieBuilder.network(
          "https://assets9.lottiefiles.com/packages/lf20_XpVCMJTSQt.json",
          width: 300,
          height: 300,
        ),
        Column(
          children: const [
            UserNameTextField(),
            PasswordTextField(),
            LoginButton(),
            RegisterButton(),
          ],
        ),
      ],
    );
  }
}
