import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:kalorientracker/view/pages/home_page.dart';
import 'package:page_transition/page_transition.dart';

class AppInit extends StatelessWidget {
  const AppInit({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen.withScreenFunction(
      splash: "assets/logo.png",
      backgroundColor: Colors.white,
      screenFunction: () async {
        //   await context.read<TimelinePageViewModel>().getListData();
        return const HomePage();
      },
      curve: Curves.linear,
      splashIconSize: 60,
      duration: 1000,
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.rightToLeft,
    );
  }
}
