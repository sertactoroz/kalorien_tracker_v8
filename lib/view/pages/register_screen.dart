import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kalorientracker/view/widgets/register_button.dart';

import 'package:lottie/lottie.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          LottieBuilder.network(
            "https://assets9.lottiefiles.com/packages/lf20_XpVCMJTSQt.json",
            width: 300,
            height: 300,
          ),
          const RegisterButton(),
        ],
      ),
    );
  }
}
