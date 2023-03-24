import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoodList extends StatefulWidget {
  const FoodList({super.key});

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(left: 30),
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(97, 151, 150, 150)),
            child: Row(
              children: [
                Text("Patates"),
                Spacer(),
                TextButton(onPressed: () {}, child: Text("Add")),
                TextButton(onPressed: () {}, child: Text("Update"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
