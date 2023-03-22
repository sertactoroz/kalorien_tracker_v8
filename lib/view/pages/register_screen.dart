import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kalorientracker/view/widgets/fruit_search_bar.dart';

import 'package:kalorientracker/view/widgets/new_user_register.dart';

import 'package:lottie/lottie.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
          children: const [NewUserRegister()],
        ),
      ],
    );
  }
}
