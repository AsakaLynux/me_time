import 'package:flutter/material.dart';

import '../../theme/color.dart';
import '../../theme/fonts.dart';
import '../../theme/image.dart';
import 'custom_button.dart';
import 'custom_place_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          width: 325,
          height: 583,
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                width: 325,
                height: 348,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 153,
                          height: 209,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: clockColor,
                          ),
                          child: Column(
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
                                "1 Hour",
                                style: blackTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: medium,
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
