import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_picker_spinner_pop_up/time_picker_spinner_pop_up.dart';

import '../../theme/color.dart';
import '../../theme/fonts.dart';
import '../../theme/image.dart';
import '../widget/custom_button.dart';

class TimePage extends StatefulWidget {
  const TimePage({super.key});

  @override
  State<TimePage> createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  int hour = 0;
  int minute = 0;
  void _hourIncrement() {
    setState(() {
      hour++;
    });
  }

  void _hourDecrement() {
    setState(() {
      hour--;
    });
  }

  void _minuteIncrement() {
    setState(() {
      minute++;
    });
  }

  void _minuteDecrement() {
    setState(() {
      minute--;
    });
  }

  String formatCounter(int number) {
    return number.toString().padLeft(2, '0');
  }

  @override
  Widget build(BuildContext context) {
    Widget timeHours() {
      // return SizedBox(
      //   height: 50,
      //   child: Row(
      //     children: [
      //       Container(
      //         width: 73,
      //         height: 49,
      //         decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(8), color: whiteColor),
      //         child: Center(
      //           child: Text(
      //             formatCounter(hour),
      //             style: timeTextStyle.copyWith(fontSize: 30),
      //           ),
      //         ),
      //       ),
      //       const SizedBox(width: 15),
      //       Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Text(
      //             "hour(s)",
      //             style: blackTextStyle.copyWith(fontSize: 18),
      //           ),
      //           Row(
      //             children: [
      //               GestureDetector(
      //                 onTap: () {
      //                   if (hour > 0) _hourDecrement();
      //                 },
      //                 child: Image.asset(
      //                   minusIcon,
      //                   color: blackText,
      //                   width: 18,
      //                   height: 18,
      //                 ),
      //               ),
      //               const SizedBox(width: 25),
      //               GestureDetector(
      //                 onTap: () {
      //                   if (hour >= 24) hour = 0;
      //                   _hourIncrement();
      //                 },
      //                 child: Image.asset(
      //                   plusIcon,
      //                   color: blackText,
      //                   width: 18,
      //                   height: 18,
      //                 ),
      //               ),
      //             ],
      //           )
      //         ],
      //       )
      //     ],
      //   ),
      // );
      return TimePickerSpinnerPopUp(
        mode: CupertinoDatePickerMode.time,
        initTime: DateTime.now(),
        onChange: (dateTime) {
          // Implement your logic with select dateTime
        },
      );
    }

    Widget timeMinutes() {
      return SizedBox(
        height: 50,
        child: Row(
          children: [
            Container(
              width: 73,
              height: 49,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: whiteColor),
              child: Center(
                child: Text(
                  formatCounter(minute),
                  style: timeTextStyle.copyWith(fontSize: 30),
                ),
              ),
            ),
            const SizedBox(width: 15),
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
                      onTap: () {
                        if (minute > 0) _minuteDecrement();
                      },
                      child: Image.asset(
                        minusIcon,
                        color: blackText,
                        width: 18,
                        height: 18,
                      ),
                    ),
                    const SizedBox(width: 25),
                    GestureDetector(
                      onTap: () {
                        if (minute < 60) _minuteIncrement();
                      },
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
      body: Center(
        child: Container(
          height: 550,
          margin: const EdgeInsets.symmetric(horizontal: 27),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  color: clockColor,
                ),
                child: Center(
                  child: SizedBox(
                    width: 180,
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
      ),
    );
  }
}
