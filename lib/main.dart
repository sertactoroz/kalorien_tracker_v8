import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kalorientracker/view/pages/providers/user_provider.dart';
import 'package:provider/provider.dart';

import 'appinit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => UserProvider())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kalorien',
      themeMode: ThemeMode.dark,
      home: AppInit(),
    );
  }
}
