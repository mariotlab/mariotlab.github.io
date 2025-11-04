import 'package:flutter/material.dart';
import 'dart:html' as html;

class MariOTNavigationBar extends StatelessWidget {
  final String currentPage;

  const MariOTNavigationBar({
    super.key,
    required this.currentPage,
  });

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
            _buildNavItem(context, 'MariOT', '/', 'MariOT'),
            _buildNavItem(context, 'Projects', '/projects', 'Projects'),
            _buildNavItem(context, 'Publications', '/publications', 'Publications'),
            _buildNavItem(context, 'MariOT Forum', '/forum', 'MariOT Forum'),
            _buildNavItem(context, 'Maritime Matrix', '/maritime-matrix', 'Maritime Matrix'),
            _buildExternalNavItem('Datasets', 'https://itrust.sutd.edu.sg/itrust-labs_datasets/'),
            _buildNavItem(context, 'News', '/news', 'News'),
            _buildExternalNavItem('Booking', 'https://itrust.sutd.edu.sg/itrust-labs_overview/'),
            _buildNavItem(context, 'Contact Us', '/contact', 'Contact Us'),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, String title, String route, String pageKey) {
    final isActive = currentPage == pageKey;
    
    return InkWell(
      onTap: () {
        if (!isActive) {
          Navigator.pushNamed(context, route);
        }
      },
      child: Padding(
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
      ),
    );
  }

  Widget _buildExternalNavItem(String title, String url) {
    return InkWell(
      onTap: () {
        // Use anchor element for better compatibility
        final anchor = html.AnchorElement(href: url)
          ..setAttribute('target', '_blank')
          ..setAttribute('rel', 'noopener noreferrer');
        anchor.click();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black87,
              ),
            ),
            const SizedBox(width: 4),
            Icon(
              Icons.open_in_new,
              size: 14,
              color: Colors.grey.shade600,
            ),
          ],
        ),
      ),
    );
  }
}