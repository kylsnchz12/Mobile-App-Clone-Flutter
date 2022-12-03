import 'package:flutter/material.dart';
import 'package:flutter_finals/profile_selection.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121213),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'assets/images/Logonetflix.png',
          height: 100,
          width: 100,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: const Text(
              'Help',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 300,
              child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'Email or phone number',
                    hintStyle: const TextStyle(
                      color: Color(0xFFa7a7a6),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                    filled: true,
                    fillColor: const Color(0xFF323233),
                    contentPadding: const EdgeInsets.all(19),
                    isDense: true,
                  )),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 300,
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                    color: Color(0xFFa7a7a6),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)),
                  filled: true,
                  fillColor: const Color(0xFF323233),
                  contentPadding: const EdgeInsets.all(19),
                  isDense: true,
                  suffixIcon: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'SHOW',
                      style: TextStyle(
                          color: Color(0xFFa7a7a6),
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF121213),
                  side: const BorderSide(width: 1, color: Colors.black),
                  minimumSize: const Size(300, 55) // Background color
                  ),
              child: const Text('Sign in',
                  style: TextStyle(
                      color: Color(0xFFa7a7a6), fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 25),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Recover Password',
                style: TextStyle(
                    color: Color(0xFFb2b2b3), fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 18),
            const SizedBox(
              width: 300,
              child: Text(
                'Sign in is protected by Google reCAPTCHA to ensure you\'re not a bot.',
                style: TextStyle(
                    color: Color(0xFFb2b2b3),
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
