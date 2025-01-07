import 'package:flutter/material.dart';

import '../../theme/color.dart';
import '../../theme/fonts.dart';
import '../widget/custom_button.dart';
import '../widget/custom_place_button.dart';

class PlacePage extends StatelessWidget {
  const PlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          height: 550,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Where do you want to do your activity?",
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 220,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomPlaceButton(text: "Online"),
                    CustomPlaceButton(text: "At home"),
                    CustomPlaceButton(text: "Anywhere"),
                  ],
                ),
              ),
              CustomButton(
                text: "Next",
                width: 200,
                function: () {
                  Navigator.pushNamed(context, "PersonPage");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
