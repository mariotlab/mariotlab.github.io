import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MariOTApp());
}

class MariOTApp extends StatelessWidget {
  const MariOTApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MariOT - Maritime Operational Technology Testbed',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E7D8B), // Teal color from the image
          brightness: Brightness.light,
        ),
        fontFamily: 'Arial',
        useMaterial3: true,
      ),
      home: const MariOTHomePage(),
    );
  }
}