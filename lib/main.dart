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
      title: 'MariOT - Maritime Testbed of Shipboard Operational Technology',
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
      onGenerateRoute: (settings) {
        // Disable page transition animations
        Widget page;
        switch (settings.name) {
          case '/':
            page = const MariOTHomePage();
            break;
          case '/projects':
            page = const ProjectsPage();
            break;
          case '/publications':
            page = const PublicationsPage();
            break;
          case '/forum':
            page = const ForumPage();
            break;
          case '/maritime-matrix':
            page = const MaritimeMatrixPage();
            break;
          case '/datasets':
            page = const DatasetsPage();
            break;
          case '/news':
            page = const NewsPage();
            break;
          case '/booking':
            page = const BookingPage();
            break;
          case '/contact':
            page = const ContactPage();
            break;
          default:
            page = const MariOTHomePage();
        }
        
        // Return page with no transition animation
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        );
      },
    );
  }
}