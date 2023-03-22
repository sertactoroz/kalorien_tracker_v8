import 'package:flutter/material.dart';
import 'package:kalorientracker/view/pages/login_screen.dart';
import 'package:kalorientracker/view/pages/register_screen.dart';

import '../widgets/custom_navbar.dart';

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
        // title: Image.asset("assets/kalorien_logo.png"),
        backgroundColor: Colors.white,
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
