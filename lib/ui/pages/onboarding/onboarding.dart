import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 48, 59, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: size.width,
            child: Row(
              children: [
                Expanded(
                  child: Transform.translate(
                    offset: Offset(30.0, (size.height / 5) * -1),
                    child: Transform.scale(
                      scale: 1.5,
                      child: Image.asset(
                        "assets/images/onboarding/1/1.png",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Transform.scale(
                    scale: 2,
                    child: Image.asset(
                      "assets/images/onboarding/2/2.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Expanded(
                  child: Transform.translate(
                    offset: Offset(-30.0, (size.height / 5)),
                    child: Transform.scale(
                      scale: 1.5,
                      child: Image.asset(
                        "assets/images/onboarding/3/3.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              const Text(
                'Manage Your \nPayments with',
                style: TextStyle(
                  fontFamily: "SofiaPro",
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 35,
                ),
              ),
              const Text(
                'mobile banking',
                style: TextStyle(
                  fontFamily: "SofiaPro",
                  color: Color.fromRGBO(69, 110, 254, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 35,
                ),
              ),
              const Text(
                'A convenient way to manage your money securely from mobile device.',
                style: TextStyle(
                  fontFamily: "SofiaPro",
                  color: Color.fromRGBO(142, 148, 154, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
