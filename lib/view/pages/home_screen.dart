import 'package:flutter/material.dart';
import 'package:kalorientracker/view/widgets/appbar_custom.dart';
import 'package:kalorientracker/view/widgets/custom_slider.dart';
import 'package:kalorientracker/view/widgets/pie_chart_widget.dart';
import 'package:pie_chart/pie_chart.dart';

import '../widgets/buttom_navbar_custom.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtomNavbarCustom(),
      appBar: AppbarCustom(),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Column(
                children: [
                  Text(
                    "Hello Omer Faruk",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Find track and eat healthy food")
                ],
              )),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: MediaQuery.of(context).size.width,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[300],
                ),
              ),
              PieChartWidget(),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 143, 86, 171),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                    width: 130,
                    child: Text(
                      "Track Your Weekly Progress",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )),
                SizedBox(
                  width: 10,
                ),
                TextButton(
                    onPressed: () {
                      HomeScreen();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: 130,
                      height: 40,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "View Now",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 143, 86, 171),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Color.fromARGB(255, 143, 86, 171),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),

          CustomSlider(),
          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: 30),
          //   width: MediaQuery.of(context).size.width,
          //   height: 150,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(20),
          //     color: Colors.grey,
          //   ),
          // ),
        ],
      ),
    );
  }
}
