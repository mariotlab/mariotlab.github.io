import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/navigation_bar.dart';
import '../widgets/ship_illustration.dart';

class MariOTHomePage extends StatelessWidget {
  const MariOTHomePage({super.key});

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
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Center(
                child: Text(
                  'MariOT - Maritime Operational Technology Testbed',
                  style: GoogleFonts.cinzel(
                    fontSize: 48,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    shadows: [
                      Shadow(
                        offset: const Offset(2, 2),
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          
          // Navigation Bar
          const MariOTNavigationBar(),
          
          // Main Content Area
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(40),
                  child: ShipIllustration(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

