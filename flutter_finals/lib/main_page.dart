import 'package:flutter/material.dart';
import 'package:flutter_finals/json/mainpage_json.dart';
import 'package:flutter_finals/pages/comingsoon_page.dart';
import 'package:flutter_finals/pages/home_page.dart';
import 'package:flutter_finals/pages/search_page.dart';

class MainPage extends StatefulWidget {
  final String img;
  final String name;
  const MainPage({super.key, required this.img, required this.name});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(img: widget.img, name: widget.name),
        ComingSoonPage(
          img: widget.img,
          name: widget.name,
        ),
        SearchPage(),
        const Center(
            child: Text(
          "Downloads",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ))
      ],
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
            return GestureDetector(
              onTap: () {
                setState(() {
                  activeTab = index;
                });
              },
              child: Column(
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
              ),
            );
          }),
        ),
      ),
    );
  }
}
