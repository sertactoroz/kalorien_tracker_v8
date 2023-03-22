import 'package:flutter/material.dart';
import 'package:kalorientracker/view/pages/login_page.dart';
import 'package:kalorientracker/view/pages/register_page.dart';
import 'package:kalorientracker/view/widgets/email_text_field.dart';
import 'package:kalorientracker/view/widgets/login_button.dart';
import 'package:kalorientracker/view/widgets/register_button.dart';

import '../widgets/custom_navbar.dart';
import '../widgets/password_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image.asset("assets/kalorien_logo.png/"),
        ),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Column(
          children: const [
            SizedBox(
              height: 20,
            ),
            RegisterScreen()
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavbar(),
    );
  }
}
