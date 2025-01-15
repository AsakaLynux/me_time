import "package:flutter/material.dart";

import "../../theme/color.dart";
import "../../theme/fonts.dart";
import "../../theme/image.dart";
import "../widget/custom_button.dart";

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: SizedBox(
          width: 325,
          height: 550,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
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
                      )
                    ],
                  ),
                ),
              ),
              Image.asset(reccImage, width: 322, height: 322),
              CustomButton(
                width: 200,
                text: "Next",
                function: () => Navigator.pushNamed(context, "InputPage"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
