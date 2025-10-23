import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/projects_page.dart';
import 'pages/publications_page.dart';
import 'pages/forum_page.dart';
import 'pages/maritime_matrix_page.dart';
import 'pages/datasets_page.dart';
import 'pages/news_page.dart';
import 'pages/booking_page.dart';
import 'pages/contact_page.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => const MariOTHomePage(),
        '/projects': (context) => const ProjectsPage(),
        '/publications': (context) => const PublicationsPage(),
        '/forum': (context) => const ForumPage(),
        '/maritime-matrix': (context) => const MaritimeMatrixPage(),
        '/datasets': (context) => const DatasetsPage(),
        '/news': (context) => const NewsPage(),
        '/booking': (context) => const BookingPage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}