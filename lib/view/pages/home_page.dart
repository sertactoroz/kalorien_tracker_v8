import 'package:flutter/material.dart';
import 'package:kalorientracker/view/widgets/custom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: appbar,
      // body: screen,
      backgroundColor: Colors.black,
      bottomNavigationBar: CustomNavbar(),
    );
  }
}
