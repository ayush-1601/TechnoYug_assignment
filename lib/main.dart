import 'package:flutter/material.dart';
import 'package:techno_yug_assignment/pages/details_page.dart';
import 'package:techno_yug_assignment/pages/home_page.dart';
import 'package:techno_yug_assignment/pages/on_board_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Poppins",
        primarySwatch: Colors.blue,
      ),
      home: OnScreen(),
    );
  }
}
