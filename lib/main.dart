import 'package:flutter/material.dart';
// import 'package:model_test/pages/login/login_page.dart';
// import 'package:model_test/view_models/profile_view_model.dart';
import 'package:provider/provider.dart';
import 'dart:convert';
// import 'pages/profile/profile_page.dart';
import 'models/user_model.dart';
import 'view/home_page.dart';
// import 'view_models/login_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
