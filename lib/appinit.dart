import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kalorientracker/view/pages/home_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:lottie/lottie.dart';

class AppInit extends StatefulWidget {
  const AppInit({super.key});

  @override
  State<AppInit> createState() => _AppInitState();
}

class _AppInitState extends State<AppInit> {
  String audioasset = "sounds/magical_light.wav";

  @override
  void initState() {
    super.initState();
    openAudio();
  }

  Future openAudio() async {
    await AudioPlayer.global.changeLogLevel(LogLevel.info);
    var player = AudioPlayer();
    await player.play(AssetSource(audioasset));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedSplashScreen.withScreenFunction(
            splash: "assets/logo.png",
            backgroundColor: Colors.white,
            screenFunction: () async {
              await openAudio();
              return const HomePage();
            },
            curve: Curves.ease,
            splashIconSize: 60,
            duration: 5000,
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.rightToLeft,
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 25.0,
              right: 25,
            ),
            child: Center(
              child: Lottie.asset(
                'assets/fruit_beat_4.json',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
