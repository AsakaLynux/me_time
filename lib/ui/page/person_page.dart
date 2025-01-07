import 'package:flutter/material.dart';

import '../../theme/color.dart';
import '../../theme/fonts.dart';
import '../../theme/image.dart';
import '../widget/custom_button.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          height: 550,
          margin: const EdgeInsets.symmetric(horizontal: 55),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "How many people are you spending your time with?",
                style:
                    blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
              ),
              SizedBox(
                width: 262,
                height: 221,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 221,
                        height: 221,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: clockColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(stickmanIcon, width: 111, height: 111),
                            SizedBox(
                              width: 74,
                              height: 54,
                              child: Row(
                                children: [
                                  Container(
                                    width: 34,
                                    height: 49,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: whiteColor,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "0",
                                        style: timeTextStyle.copyWith(
                                            fontSize: 30),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Container(
                                    width: 34,
                                    height: 49,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: whiteColor,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "0",
                                        style: timeTextStyle.copyWith(
                                            fontSize: 30),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: 255,
                        height: 41,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: buttonBackgroundColor,
                                ),
                                child: Image.asset(
                                  minusIcon,
                                  color: whiteColor,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: buttonBackgroundColor,
                                ),
                                child: Image.asset(
                                  plusIcon,
                                  color: whiteColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                text: "Next",
                width: 200,
                function: () {
                  Navigator.pushNamed(context, "ResultPage");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
