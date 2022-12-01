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
      child: Row(
        children: [
          Column(
            children: [
              Icon(
                items[0]['icon'],
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
