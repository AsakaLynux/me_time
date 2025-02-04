import 'package:flutter/material.dart';

import 'ui/page/activity_page.dart';
import 'ui/page/start_page.dart';
import 'ui/page/input_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: const ActivityPage(),
    routes: {
      '/': (context) => const StartPage(),
      'InputPage': (context) => const InputPage(),
      'ActivityPage': (context) => const ActivityPage()
    },
  ));
}
