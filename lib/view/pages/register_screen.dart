import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kalorientracker/constants/constants.dart';
import 'package:kalorientracker/view/pages/home_screen.dart';
import 'package:kalorientracker/view/pages/login_screen.dart';
import 'package:kalorientracker/view/pages/register_screen.dart';
import 'package:kalorientracker/view/widgets/appbar_custom.dart';

import 'package:kalorientracker/view/widgets/custom_button.dart';
import 'package:kalorientracker/view/widgets/animation_orange.dart';
import 'package:kalorientracker/view/widgets/text_input.dart';
import 'package:lottie/lottie.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
            CustomButton(
              text: 'Register',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              color: orangeCustom,
              textColor: Colors.white,
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
