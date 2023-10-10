import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  final String title, subTitle, text, image;
  const OnboardingContent({
    super.key,
    required this.title,
    required this.subTitle,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(
          width: size.width,
          child: Image.asset(
            image,
            fit: BoxFit.none,
          ),
        ),
        Text(
          title,
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontFamily: "SofiaPro",
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 35,
          ),
        ),
        Text(
          subTitle,
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontFamily: "SofiaPro",
            color: Color.fromRGBO(69, 110, 254, 1),
            fontWeight: FontWeight.w700,
            fontSize: 35,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            fontFamily: "SofiaPro",
            color: Color.fromRGBO(142, 148, 154, 1),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
