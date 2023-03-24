import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kalorientracker/constants/constants.dart';
import 'package:kalorientracker/view/pages/login_screen.dart';

import '../../home_page.dart';
import '../pages/home_screen.dart';
import '../pages/profile_screen.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

class ButtomNavbarCustom extends StatefulWidget {
  const ButtomNavbarCustom({Key? key}) : super(key: key);

  @override
  State<ButtomNavbarCustom> createState() => _ButtomNavbarCustomState();
}

class _ButtomNavbarCustomState extends State<ButtomNavbarCustom> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 0) {
      // Navigate to the ProfileScreen widget
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    }
    if (index == 1) {
      // Navigate to the ProfileScreen widget
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => ProfileScreen(),
      //   ),
      // );
    }
    if (index == 2) {
      // Navigate to the ProfileScreen widget
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => LoginScreen(),
      //   ),
      // );
    }

    if (index == 3) {
      // Navigate to the ProfileScreen widget
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => ProfileScreen(),
      //   ),
      // );
    }
    if (index == 4) {
      // Navigate to the ProfileScreen widget
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileScreen(),
        ),
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color(0xFF25A74A)),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Food',
          backgroundColor: Color(0xFF25A74A),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.apple),
          label: 'Diet',
          backgroundColor: Color(0xFF25A74A),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: 'Calendar',
          backgroundColor: Color(0xFF25A74A),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          backgroundColor: Color(0xFF25A74A),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      onTap: _onItemTapped,
    );
  }
}
