import 'package:flutter/material.dart';
import 'package:my_portfolio/views/main_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      home: MainDashboard(),
    );
  }
}
