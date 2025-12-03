import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'navigation_bar.dart';

class PageLayout extends StatelessWidget {
  final Widget child;
  final String currentPage;

  const PageLayout({
    super.key,
    required this.child,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header Section
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF2E7D8B), Color(0xFF4A9BB3)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // iTrust Logo
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      const Color(0xFF2E7D8B).withOpacity(0.3),
                      BlendMode.darken,
                    ),
                    child: Image.asset(
                      'assets/images/itrustlogo.png',
                      height: 60,
                      errorBuilder: (context, error, stackTrace) {
                        return const SizedBox(width: 60);
                      },
                    ),
                  ),
                  const SizedBox(width: 30),
                  
                  // Title Text
                  Flexible(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: GoogleFonts.cinzel(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          shadows: [
                            Shadow(
                              offset: const Offset(2, 2),
                              blurRadius: 4,
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ],
                        ),
                        children: [
                          TextSpan(
                            text: 'Mari',
                            style: TextStyle(color: Colors.blue.shade300),
                          ),
                          const TextSpan(
                            text: 'OT',
                            style: TextStyle(color: Colors.red),
                          ),
                          const TextSpan(
                            text: ' - Maritime Testbed of Shipboard Operational Technology',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(width: 30),
                  // SUTD Logo
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      const Color(0xFF4A9BB3).withOpacity(0.3),
                      BlendMode.darken,
                    ),
                    child: Image.asset(
                      'assets/images/sutdlogo.png',
                      height: 60,
                      errorBuilder: (context, error, stackTrace) {
                        return const SizedBox(width: 60);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // Navigation Bar
          MariOTNavigationBar(currentPage: currentPage),
          
          // Main Content Area
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
