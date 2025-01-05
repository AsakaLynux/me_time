import 'package:flutter/material.dart';

import '../../theme/color.dart';
import '../../theme/fonts.dart';
import '../../theme/image.dart';
import '../widget/custom_button.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          width: 255,
          height: 484,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "We recommend doing these things",
                style:
                    blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
              ),
              SizedBox(
                width: 355,
                height: 289,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: buttonBackgroundColor,
                        image: DecorationImage(
                          image: AssetImage(leftIcon),
                        ),
                      ),
                    ),
                    Container(
                      width: 273,
                      height: 289,
                      padding: const EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: cardBackground,
                        border: Border.all(
                          color: Colors.pinkAccent,
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 244,
                            height: 144,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "Bake chocolate chip cookies",
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: medium,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text:
                                  "follow this easy, single serve recipe from ",
                              style: blackTextStyle,
                              children: [
                                TextSpan(
                                  text: "chelsea’s messy apron",
                                  style: blackTextStyle.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: buttonBackgroundColor,
                        image: DecorationImage(
                          image: AssetImage(rightIcon),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                text: "Back to start page",
                width: 200,
                function: () {
                  Navigator.pushNamed(context, "/");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
