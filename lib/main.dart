import 'package:flutter/material.dart';

import 'const/global_colors.dart';
import 'screens/home_screen.dart';
// import 'consts/global_colors.dart';
// import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter 3.0.4 ',
      home: HomeScreen(),
    );
  }
}
