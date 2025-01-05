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
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 55),
        child: Center(
          child: Column(
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
                    Container(
                      width: 221,
                      height: 221,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: clockColor,
                      ),
                      child: Column(
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
                                  child: Text(
                                    "0",
                                    style: timeTextStyle.copyWith(fontSize: 30),
                                  ),
                                ),
                                Container(
                                  width: 34,
                                  height: 49,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: whiteColor,
                                  ),
                                  child: Text(
                                    "0",
                                    style: timeTextStyle.copyWith(fontSize: 30),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: 262,
                        height: 41,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: buttonBackgroundColor,
                              ),
                              child: Image.asset(
                                minusIcon,
                                width: 30,
                                height: 30,
                                color: whiteColor,
                              ),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: buttonBackgroundColor,
                              ),
                              child: Image.asset(
                                plusIcon,
                                width: 30,
                                height: 30,
                                color: whiteColor,
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
