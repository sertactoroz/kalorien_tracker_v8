import 'package:flutter/material.dart';
import 'package:kalorientracker/constants/constants.dart';
import 'package:kalorientracker/view/pages/home_screen.dart';
import 'package:kalorientracker/view/pages/register_screen.dart';
import 'package:kalorientracker/view/widgets/appbar_custom.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:kalorientracker/view/widgets/custom_button.dart';
import 'package:kalorientracker/view/widgets/animation_orange.dart';
import 'package:kalorientracker/view/widgets/text_input.dart';

import '../../home_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            AppbarCustom(),
            AnimationOrange(),
            Spacer(),
            CustomTextInput(
              label: 'username',
              textController: TextEditingController(),
            ),
            CustomTextInput(
              label: 'e-mail',
              textController: TextEditingController(),
            ),
            CustomButton1(
              text: 'Login',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              color: greenCustom,
              textColor: Colors.white,
            ),
            CustomButton1(
              text: 'Register',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterScreen(),
                  ),
                );
              },
              color: Colors.white,
              textColor: Colors.grey,
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
