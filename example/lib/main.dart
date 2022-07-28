import 'package:flutter/material.dart';
import 'screens/multi_platform/multi_platform_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ui_target_platform Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MultiPlatformScreen(),
    );
  }
}
