import 'package:flutter/material.dart';
import 'package:flutter_finals/buttons/button_active.dart';
import 'package:flutter_finals/buttons/buttons.dart';
import 'package:flutter_finals/json/button_json.dart';
import 'package:flutter_finals/login_screen.dart';
import 'package:flutter_finals/profile_selection.dart';

class ProfileSetting extends StatefulWidget {
  final String img;
  final String name;
  const ProfileSetting({super.key, required this.img, required this.name});

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          centerTitle: false,
          automaticallyImplyLeading: true,
          elevation: 0,
          backgroundColor: Colors.black,
          title: Text(
            widget.name,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),
          )),
      body: getBody(),
    );
  }

  Widget getBody() {
    // var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(buttonProfile.length, (index) {
                  if (widget.name == buttonProfile[index]["name"]) {
                    return ActiveButton(
                        img: buttonProfile[index]["img"],
                        name: buttonProfile[index]["name"]);
                  } else {
                    return MyButton(
                        img: buttonProfile[index]["img"],
                        name: buttonProfile[index]["name"]);
                  }
                }),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.edit_note, color: Colors.white),
                  const SizedBox(width: 5),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) => const ProfilePage()),
                        );
                      },
                      child: const Text(
                        'Manage Profile',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ))
                ],
              ),
              const SizedBox(height: 25),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      color: const Color(0xff121213),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.notifications_none_outlined,
                                  color: Colors.white.withOpacity(0.9),
                                  size: 28,
                                ),
                                const SizedBox(width: 15),
                                Text('Notifications',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.9),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 22, color: Colors.white.withOpacity(0.9))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      color: const Color(0xff121213),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Material(
                              color: const Color(0xff121213),
                              child: InkWell(
                                onTap: () {},
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/images/wednesday.webp',
                                    width: 120,
                                    height: 70,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "New Arrival",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "Wednesday",
                                  style: TextStyle(
                                      color: Color(0xffa4a4a4),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "Nov 25",
                                  style: TextStyle(
                                      color: Color(0xffa4a4a4),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      color: const Color(0xff121213),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Material(
                              color: const Color(0xff121213),
                              child: InkWell(
                                onTap: () {},
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/images/QueensGambit.png',
                                    width: 120,
                                    height: 70,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Queens Gambit",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "Now Streaming",
                                  style: TextStyle(
                                      color: Color(0xffa4a4a4),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "Watch now",
                                  style: TextStyle(
                                      color: Color(0xffa4a4a4),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      color: const Color(0xff121213),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.check,
                                  color: Colors.white.withOpacity(0.9),
                                  size: 28,
                                ),
                                const SizedBox(width: 15),
                                Text('My List',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.9),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 22, color: Colors.white.withOpacity(0.9))
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      color: const Color(0xff121213),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.settings_outlined,
                                  color: Colors.white.withOpacity(0.9),
                                  size: 28,
                                ),
                                const SizedBox(width: 15),
                                Text('App Settings',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.9),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 22, color: Colors.white.withOpacity(0.9))
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      color: const Color(0xff121213),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.verified_user_outlined,
                                  color: Colors.white.withOpacity(0.9),
                                  size: 28,
                                ),
                                const SizedBox(width: 15),
                                Text('Account',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.9),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 22, color: Colors.white.withOpacity(0.9))
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      color: const Color(0xff121213),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.help_outline_outlined,
                                  color: Colors.white.withOpacity(0.9),
                                  size: 28,
                                ),
                                const SizedBox(width: 15),
                                Text('Help',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.9),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 22, color: Colors.white.withOpacity(0.9))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                          pageBuilder: (_, __, ___) => const LoginPage()),
                    );
                  },
                  child: const Text(
                    "Sign Out",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
