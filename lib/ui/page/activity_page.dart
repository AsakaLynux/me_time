import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../theme/color.dart';
import '../../theme/fonts.dart';
import '../widget/custom_button.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  List dataSet = [];

  Future<void> readDataSet() async {
    final String response = await rootBundle.loadString("dataset/dataset.json");
    final Map<String, dynamic> data = jsonDecode(response);
    setState(() {
      dataSet = data["data"];
    });
  }

  @override
  void initState() {
    super.initState();
    readDataSet();
  }

  @override
  Widget build(BuildContext context) {
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
                child: ListView.builder(
                    itemCount: dataSet.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        card(dataSet[index]["title"])),
              ),
              startPageButton(),
            ],
          ),
        ),
      ),
    );
  }
}
