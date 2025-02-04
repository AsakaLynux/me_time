import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../db/dataset.dart';
import '../../theme/color.dart';
import '../../theme/fonts.dart';
import '../widget/custom_button.dart';

class ActivityPage extends StatefulWidget {
  final String selectedAttendance;
  final String selectedDuration;
  final String selectedPlace;
  const ActivityPage({
    super.key,
    this.selectedAttendance = "1 person",
    this.selectedPlace = "At home",
    this.selectedDuration = "1 hour",
  });

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  List<Map<String, String>> recommendActivities() {
    return activities
        .where((activity) =>
            activity["attendance"] == widget.selectedAttendance &&
            activity["duration"] == widget.selectedDuration &&
            activity["place"] == widget.selectedPlace)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(
          "${widget.selectedDuration}, ${widget.selectedAttendance}, ${widget.selectedPlace}");
      print(recommendActivities());
    }
    Widget card(String text) {
      return Container(
        // height: 289,
        width: 200,
        padding: const EdgeInsets.all(13),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: clockColor,
          border: Border.all(
            color: cardBackground,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   width: 244,
            //   height: 144,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     color: Colors.white,
            //   ),
            // ),
            Text(
              text,
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget startPageButton() {
      return CustomButton(
        text: "Back to start page",
        width: 200,
        function: () {
          Navigator.pushNamed(context, "/");
        },
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          height: 550,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 280,
                child: Text(
                  "We recommend doing these things",
                  style: blackTextStyle.copyWith(
                      fontSize: 24, fontWeight: semiBold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 200,
                // width: 300,
                child: Center(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: recommendActivities().length,
                      itemBuilder: (context, index) {
                        final activity = recommendActivities()[index];
                        if (activity.isEmpty) {
                          return const Center(
                            child:
                                Text("We don't have recommandation activity"),
                          );
                        }
                        return card(activity["title"]!);
                      }),
                ),
              ),
              startPageButton(),
            ],
          ),
        ),
      ),
    );
  }
}
