import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:monkey/generated/locale_keys.g.dart';
import 'package:monkey/screens/home/view.dart';

import 'controller.dart';

class OnboardingScreen extends StatefulWidget{
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnboardingScreen> {
  final controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(34),
        child: ListView(
          children: [
            const SizedBox(
              height: 80,
            ),
            SizedBox(
              height: 294,
              child: PageView(
                onPageChanged: (value) {
                  controller.changePage(value);
                  setState(() {});
                },
                children: List.generate(
                  controller.images.length,
                  (index) => Image.asset(
                    // Assets.images.onboarding. +
                        controller.images[controller.currentIndex],
                    width: 225.44,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                controller.images.length,
                (index) => Container(
                  margin: const EdgeInsetsDirectional.only(start: 5),
                  height: 8,
                  width: index == controller.currentIndex ? 8 : 8,
                  decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(25),
                    color: Color(index == controller.currentIndex
                        ? 0xffFC6011
                        : 0xffD6D6D6),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              controller.titles[controller.currentIndex],
              style: const TextStyle(fontSize: 28, color: Color(0xff4A4B4D)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 33,
            ),
            Text(
              controller.hints[controller.currentIndex],
              style: const TextStyle(fontSize: 13, color: Color(0xff7C7D7E)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            controller.currentIndex == 2
                ? ElevatedButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>const MainHomeScreen()));
                }, child:  Text(LocaleKeys.finish.tr()))
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }

}