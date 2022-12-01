import 'package:flutter/material.dart';
import 'package:flutter_finals/json/homepage_json.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getFooter() {
    return Container(
      height: 80,
      decoration: const BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
            return Column(
              children: [
                Icon(
                  items[index]['icon'],
                  color: Colors.white,
                ),
                const SizedBox(height: 5),
                Text(
                  items[index]['text'],
                  style: const TextStyle(color: Colors.white, fontSize: 10),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
