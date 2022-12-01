import 'package:flutter/material.dart';
import 'package:flutter_finals/main_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Who\'s Watching?',
          style: TextStyle(color: Color(0xFFe2e3e2)),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: const Text(
              'Edit',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      Material(
                        color: Colors.black,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainPage(
                                          img: 'assets/images/profile1.png',
                                        )));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset('assets/images/profile1.png',
                                width: 120, height: 120),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "Zeth",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(width: 35),
                  Column(
                    children: [
                      Material(
                        color: Colors.black,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainPage(
                                          img: 'assets/images/profile2.png',
                                        )));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset('assets/images/profile2.png',
                                width: 120, height: 120),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "Jeremy",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      Material(
                        color: Colors.black,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainPage(
                                          img: 'assets/images/profile3.png',
                                        )));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset('assets/images/profile3.png',
                                width: 120, height: 120),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "Gilles",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(width: 35),
                  Column(
                    children: [
                      Material(
                        color: Colors.black,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainPage(
                                          img: 'assets/images/profile4.png',
                                        )));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset('assets/images/profile4.png',
                                width: 120, height: 120),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "Jazphyr",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  Material(
                    color: Colors.black,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainPage(
                                      img: 'assets/images/kidsprofile.png',
                                    )));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset('assets/images/kidsprofile.png',
                            width: 120, height: 120),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Kids",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )
                ],
              ),
              const SizedBox(height: 100)
            ],
          ),
        ),
      ),
    );
  }
}
