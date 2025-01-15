import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../theme/color.dart';
import '../../theme/fonts.dart';
import '../../theme/image.dart';
import '../widget/custom_button.dart';
import '../widget/custom_place_button.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int _selectedHours = 0;
  int _selectedMinutes = 0;
  int _selectedAttendace = 0;
  List<String> locations = [
    "At home",
    "Online",
    "Anywhere",
  ];
  int _selectedLocation = 0;
  String defaultLocation = "Select Location";
  final TextEditingController attandanceController =
      TextEditingController(text: "");
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void _showDurationPicker() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 250,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      setState(() {
                        _selectedHours = 0;
                        _selectedMinutes = 0;
                      });
                    }, // Cancel
                    child: Text("Cancel"),
                  ),
                  TextButton(
                    onPressed: () =>
                        Navigator.of(context).pop(), // Confirm and close
                    child: Text("OK"),
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  children: [
                    // Hours Picker
                    Expanded(
                      child: CupertinoPicker(
                        itemExtent: 40,
                        scrollController: FixedExtentScrollController(
                            initialItem: _selectedHours),
                        looping: true,
                        onSelectedItemChanged: (index) {
                          setState(() {
                            _selectedHours = index;
                          });
                        },
                        children: List<Widget>.generate(
                            24, (index) => Center(child: Text("$index h"))),
                      ),
                    ),
                    // Minutes Picker
                    Expanded(
                      child: CupertinoPicker(
                        itemExtent: 40,
                        scrollController: FixedExtentScrollController(
                            initialItem: _selectedMinutes),
                        looping: true,
                        onSelectedItemChanged: (index) {
                          setState(() {
                            _selectedMinutes = index;
                          });
                        },
                        children: List<Widget>.generate(
                            60, (index) => Center(child: Text("$index m"))),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _inputAttandance() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("How many attandance?"),
          content: Form(
            key: formKey,
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: attandanceController,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                attandanceController.clear();
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  int attandance = int.parse(attandanceController.value.text);
                  if (attandance > 100) {
                    final snackBar = SnackBar(
                      content: Text("Attandance melebihi batas maksimal"),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  } else {
                    setState(() {
                      _selectedAttendace = attandance;
                    });
                    Navigator.pop(context);
                  }
                }
                attandanceController.clear();
              },
              child: Text("Ok"),
            ),
          ],
        );
      },
    );
  }

  void _chooseLocation() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 200,
          child: CupertinoPicker(
              itemExtent: 40,
              scrollController:
                  FixedExtentScrollController(initialItem: _selectedLocation),
              onSelectedItemChanged: (index) {
                setState(() {
                  _selectedLocation = index;
                  defaultLocation = locations[_selectedLocation];
                });
              },
              children: List<Widget>.generate(locations.length,
                  (index) => Center(child: Text(locations[index])))),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget textRecommendation() {
      return RichText(
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
            ),
          ],
        ),
      );
    }

    Widget inputCard() {
      return SizedBox(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 154,
                  height: 200,
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
                      Container(
                        width: 118,
                        height: 50,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                          onPressed: _showDurationPicker,
                          child: Text(
                            "${_selectedHours}h ${_selectedMinutes}m",
                            style: blackTextStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 154,
                  height: 200,
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
                        "attendance",
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: light,
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 49,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: whiteColor,
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: _inputAttandance,
                            child: Text(
                              "$_selectedAttendace",
                              style: blackTextStyle.copyWith(
                                fontSize: 24,
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: _chooseLocation,
              child: CustomPlaceButton(text: defaultLocation),
            ),
          ],
        ),
      );
    }

    Widget finalizeButton() {
      return CustomButton(
        width: 200,
        text: "Finalize",
        function: () {
          Navigator.pushNamed(context, "ActivityPage");
        },
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: SizedBox(
          width: 325,
          height: 550,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textRecommendation(),
              inputCard(),
              finalizeButton(),
            ],
          ),
        ),
      ),
    );
  }
}
