import 'package:flutter/material.dart';

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
            )
          ],
        ),
      ),
    );
  }
}
