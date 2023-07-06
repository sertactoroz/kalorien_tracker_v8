import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class FruitSearchBar extends StatefulWidget with PreferredSizeWidget {
  FruitSearchBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56);
  @override
  State<FruitSearchBar> createState() => _FruitSearchBarState();
}

class _FruitSearchBarState extends State<FruitSearchBar> {
  final TextEditingController _typedText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // PageProvider pageProvider = Provider.of<PageProvider>(context);
    return TextField(
      onTap: () {
        // pageProvider.setPressed(!pageProvider.getPressed);
      },
      controller: _typedText,
      style: TextStyle(color: Colors.green[700], fontSize: 16),
      decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(
              Icons.clear,
              color: Colors.green.shade600,
            ),
            onPressed: () {
              _typedText.clear();
            },
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          hintText: "Search",
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(vertical: 5),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Colors.green,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Colors.green,
              ))),
    );
  }
}
