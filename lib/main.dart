import 'package:flutter/material.dart';
import 'package:service_booking_app/pages/bookpage.dart';
import 'package:service_booking_app/pages/bottomnav.dart';
import 'package:service_booking_app/pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Homepage(),
    );
  }
}
