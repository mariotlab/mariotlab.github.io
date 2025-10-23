import 'package:flutter/material.dart';

class MariOTNavigationBar extends StatelessWidget {
  const MariOTNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildNavItem('MariOT', true),
            _buildNavItem('Projects', false),
            _buildNavItem('Publications', false),
            _buildNavItem('MariOT Forum', false),
            _buildNavItem('Maritime Matrix', false),
            _buildNavItem('Datasets', false),
            _buildNavItem('News', false),
            _buildNavItem('Booking', false),
            _buildNavItem('Contact Us', false),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String title, bool isActive) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          color: isActive ? const Color(0xFF2E7D8B) : Colors.black87,
          decoration: isActive ? TextDecoration.underline : TextDecoration.none,
          decorationColor: const Color(0xFF2E7D8B),
          decorationThickness: 2,
        ),
      ),
    );
  }
}

