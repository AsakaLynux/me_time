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
        width: 73,
        height: 50,
        child: Row(
          children: [
            Container(
              width: 34,
              height: 49,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "0",
                style: timeTextStyle.copyWith(fontSize: 30),
              ),
            ),
            const SizedBox(width: 5),
            Container(
              width: 34,
              height: 49,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "1",
                style: timeTextStyle.copyWith(fontSize: 30),
              ),
            ),
            SizedBox(
              width: 64,
              height: 42,
              child: Column(
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
                          plusIcon,
                          color: blackText,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          minusIcon,
                          color: blackText,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget timeMinutes() {
      return SizedBox(
        width: 73,
        height: 50,
        child: Row(
          children: [
            Container(
              width: 34,
              height: 49,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "0",
                style: timeTextStyle.copyWith(fontSize: 30),
              ),
            ),
            const SizedBox(width: 5),
            Container(
              width: 34,
              height: 49,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "0",
                style: timeTextStyle.copyWith(fontSize: 30),
              ),
            ),
            SizedBox(
              width: 87,
              height: 42,
              child: Column(
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
                          plusIcon,
                          color: blackText,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          minusIcon,
                          color: blackText,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Text(
            "How much time do you want to spend?",
            style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
          ),
          Container(
            width: 221,
            height: 221,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: orangeText,
            ),
            child: Column(
              children: [timeHours(), timeMinutes()],
            ),
          ),
          CustomButton(
            width: 200,
            text: "Next",
            function: () {},
          )
        ],
      ),
    );
  }
}
