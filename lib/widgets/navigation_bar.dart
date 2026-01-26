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
            _buildNavItem(context, 'Datasets', '/datasets', 'Datasets'),
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
    
    return _HoverableNavItem(
      isActive: isActive,
      title: title,
      onTap: () {
        if (!isActive) {
          Navigator.pushNamed(context, route);
        }
      },
    );
  }

  Widget _buildExternalNavItem(String title, String url) {
    return _HoverableExternalNavItem(
      title: title,
      url: url,
    );
  }
}

class _HoverableNavItem extends StatefulWidget {
  final bool isActive;
  final String title;
  final VoidCallback onTap;

  const _HoverableNavItem({
    required this.isActive,
    required this.title,
    required this.onTap,
  });

  @override
  State<_HoverableNavItem> createState() => _HoverableNavItemState();
}

class _HoverableNavItemState extends State<_HoverableNavItem> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          decoration: BoxDecoration(
            color: _isHovering ? const Color(0xFF2E7D8B).withOpacity(0.1) : Colors.transparent,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            widget.title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: widget.isActive ? FontWeight.bold : FontWeight.normal,
              color: widget.isActive ? const Color(0xFF2E7D8B) : Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}

class _HoverableExternalNavItem extends StatefulWidget {
  final String title;
  final String url;

  const _HoverableExternalNavItem({
    required this.title,
    required this.url,
  });

  @override
  State<_HoverableExternalNavItem> createState() => _HoverableExternalNavItemState();
}

class _HoverableExternalNavItemState extends State<_HoverableExternalNavItem> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: () {
          final anchor = html.AnchorElement(href: widget.url)
            ..setAttribute('target', '_blank')
            ..setAttribute('rel', 'noopener noreferrer');
          anchor.click();
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          decoration: BoxDecoration(
            color: _isHovering ? const Color(0xFF2E7D8B).withOpacity(0.1) : Colors.transparent,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.title,
                style: TextStyle(
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
      ),
    );
  }
}