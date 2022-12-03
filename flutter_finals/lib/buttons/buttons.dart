import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String img;
  final String name;

  const MyButton({super.key, required this.img, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: InkWell(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(img, width: 60, height: 60),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
