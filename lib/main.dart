import 'package:flutter/material.dart';

import 'ui/page/activity_page.dart';
import 'ui/page/person_page.dart';
import 'ui/page/place_page.dart';
import 'ui/page/start_page.dart';
import 'ui/page/time_page.dart';
import 'ui/widget/result_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: const WelcomePage(),
    routes: {
      '/': (context) => const StartPage(),
      'TimePage': (context) => const TimePage(),
      'PlacePage': (context) => const PlacePage(),
      'PersonPage': (context) => const PersonPage(),
      'ResultPage': (context) => const ResultPage(),
      'ActivityPage': (context) => const ActivityPage()
    },
  ));
}
