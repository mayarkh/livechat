import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 95),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 225, 224, 224),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            "Log in",
            style: TextStyle(
              color: Color.fromARGB(255, 9, 9, 9),
              fontWeight: FontWeight.normal,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
