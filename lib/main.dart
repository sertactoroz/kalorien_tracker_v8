import 'package:flutter/material.dart';
import 'package:kalorientracker/view_models/provider/home_screen_view_model.dart';
import 'package:provider/provider.dart';

import 'appinit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeScreenViewModel()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kalorien',
        themeMode: ThemeMode.dark,
        home: AppInit(),
      ),
    );
  }
}
