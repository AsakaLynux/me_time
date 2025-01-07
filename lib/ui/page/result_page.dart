import 'package:flutter/material.dart';

import '../../theme/color.dart';
import '../../theme/fonts.dart';
import '../../theme/image.dart';
import '../widget/custom_button.dart';
import '../widget/custom_place_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          width: 325,
          height: 550,
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: "We will recommend the ",
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                  children: [
                    TextSpan(
                      text: "right activity ",
                      style: greenTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    TextSpan(
                      text: "for you.",
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                // width: 325,
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 153,
                          height: 209,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: clockColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                clockIcon,
                                width: 66,
                                height: 66,
                              ),
                              Text(
                                "time",
                                style: blackTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: light,
                                ),
                              ),
                              Text(
                                "1h",
                                style: blackTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 153,
                          height: 209,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: clockColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                stickmanIcon,
                                width: 66,
                                height: 66,
                              ),
                              Text(
                                "quota",
                                style: blackTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: light,
                                ),
                              ),
                              Text(
                                "1 person",
                                style: blackTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const CustomPlaceButton(text: "At Home"),
                  ],
                ),
              ),
              CustomButton(
                width: 200,
                text: "Finalize",
                function: () {
                  Navigator.pushNamed(context, "ActivityPage");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
