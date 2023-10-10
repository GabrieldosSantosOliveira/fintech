import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  const Button({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 100,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          backgroundColor: const Color(0xff4F5962),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        child: const Text(
          "Skip",
          style: TextStyle(
            color: Color(0xffC8CBCE),
          ),
        ),
      ),
    );
  }
}
