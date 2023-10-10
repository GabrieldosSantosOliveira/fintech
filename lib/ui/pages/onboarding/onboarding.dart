import 'package:fintech/ui/pages/onboarding/components/button.dart';
import 'package:fintech/ui/pages/onboarding/components/dot.dart';
import 'package:fintech/ui/pages/onboarding/slides.dart';
import 'package:flutter/material.dart';
import 'components/onboarding_content.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF23303B),
      body: SafeArea(
        child: Column(
          children: [
            PageView.builder(
              itemCount: 2,
              controller: controller,
              itemBuilder: (context, index) => OnboardingContent(
                image: slides[index].image,
                title: slides[index].title,
                subTitle: slides[index].subTitle,
                text: slides[index].text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 34, right: 34, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      children: [Dot(), SizedBox(width: 5), Dot(), Dot()],
                    ),
                  ),
                  Button(
                    onPressed: () {
                      controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
