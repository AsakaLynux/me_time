import 'package:flutter/material.dart';

import '../../theme/color.dart';
import '../../theme/fonts.dart';
import '../../theme/image.dart';
import '../widget/custom_button.dart';

class TimePage extends StatelessWidget {
  const TimePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget timeHours() {
      return SizedBox(
        height: 50,
        child: Row(
          children: [
            Container(
              width: 34,
              height: 49,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: whiteColor),
              child: Center(
                child: Text(
                  "0",
                  style: timeTextStyle.copyWith(fontSize: 30),
                ),
              ),
            ),
            const SizedBox(width: 5),
            Container(
              width: 34,
              height: 49,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: whiteColor),
              child: Center(
                child: Text(
                  "1",
                  style: timeTextStyle.copyWith(fontSize: 30),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "hour(s)",
                  style: blackTextStyle.copyWith(fontSize: 18),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        minusIcon,
                        color: blackText,
                        width: 18,
                        height: 18,
                      ),
                    ),
                    const SizedBox(width: 14),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        plusIcon,
                        color: blackText,
                        width: 18,
                        height: 18,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    Widget timeMinutes() {
      return SizedBox(
        height: 50,
        child: Row(
          children: [
            Container(
              width: 34,
              height: 49,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: whiteColor),
              child: Center(
                child: Text(
                  "0",
                  style: timeTextStyle.copyWith(fontSize: 30),
                ),
              ),
            ),
            const SizedBox(width: 5),
            Container(
              width: 34,
              height: 49,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: whiteColor),
              child: Center(
                child: Text(
                  "0",
                  style: timeTextStyle.copyWith(fontSize: 30),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "minute(s)",
                  style: blackTextStyle.copyWith(fontSize: 18),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        minusIcon,
                        color: blackText,
                        width: 18,
                        height: 18,
                      ),
                    ),
                    const SizedBox(width: 14),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        plusIcon,
                        color: blackText,
                        width: 18,
                        height: 18,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "How much time do you want to spend?",
              style:
                  blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
            ),
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: orangeText,
              ),
              child: Center(
                child: SizedBox(
                  width: 172,
                  height: 117,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      timeHours(),
                      timeMinutes(),
                    ],
                  ),
                ),
              ),
            ),
            CustomButton(
              width: 200,
              text: "Next",
              function: () {
                Navigator.pushNamed(context, "PlacePage");
              },
            )
          ],
        ),
      ),
    );
  }
}
