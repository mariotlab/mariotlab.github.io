import 'package:flutter/material.dart';

class ShipIllustration extends StatelessWidget {
  const ShipIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      height: 500,
      child: Image.asset(
        'assets/images/container_ship.png',
        fit: BoxFit.contain,
        filterQuality: FilterQuality.high,
        errorBuilder: (context, error, stackTrace) {
          // Fallback to the original illustration if image fails to load
          return _buildFallbackIllustration();
        },
      ),
    );
  }

  Widget _buildFallbackIllustration() {
    return SizedBox(
      width: 800,
      height: 500,
      child: Stack(
        children: [
          // Ship Hull
          Positioned(
            bottom: 0,
            left: 50,
            child: Container(
              width: 700,
              height: 200,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          
          // Ship Bottom (Red part)
          Positioned(
            bottom: 0,
            left: 50,
            child: Container(
              width: 700,
              height: 60,
              decoration: const BoxDecoration(
                color: Color(0xFFD32F2F),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
          ),
          
          // Ship Superstructure
          Positioned(
            bottom: 160,
            left: 100,
            child: Container(
              width: 200,
              height: 180,
              decoration: BoxDecoration(
                color: const Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade400),
              ),
            ),
          ),
          
          // Bridge/Control Tower
          Positioned(
            bottom: 280,
            left: 140,
            child: Container(
              width: 120,
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xFFBDBDBD),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.grey.shade500),
              ),
            ),
          ),
          
          // Containers - Multiple colors
          ..._buildContainers(),
          
          // Ship Mast
          Positioned(
            bottom: 340,
            right: 120,
            child: Container(
              width: 4,
              height: 120,
              color: Colors.grey.shade700,
            ),
          ),
          
          // Mast Cross Beam
          Positioned(
            bottom: 400,
            right: 100,
            child: Container(
              width: 40,
              height: 3,
              color: Colors.grey.shade700,
            ),
          ),
          
          // Flag
          Positioned(
            bottom: 420,
            right: 95,
            child: Container(
              width: 20,
              height: 12,
              decoration: BoxDecoration(
                color: const Color(0xFFD32F2F),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          
          // Lifeboats
          Positioned(
            bottom: 240,
            left: 60,
            child: Container(
              width: 30,
              height: 15,
              decoration: BoxDecoration(
                color: const Color(0xFFFF9800),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Positioned(
            bottom: 220,
            left: 60,
            child: Container(
              width: 30,
              height: 15,
              decoration: BoxDecoration(
                color: const Color(0xFFFF9800),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildContainers() {
    final containerColors = [
      const Color(0xFFD32F2F), // Red
      const Color(0xFF8D6E63), // Brown
      const Color(0xFF00ACC1), // Cyan
      const Color(0xFF388E3C), // Green
      const Color(0xFF1976D2), // Blue
      const Color(0xFF7B1FA2), // Purple
      const Color(0xFFFF8F00), // Orange
      const Color(0xFF5D4037), // Dark Brown
    ];

    List<Widget> containers = [];
    
    // First row of containers
    for (int i = 0; i < 8; i++) {
      containers.add(
        Positioned(
          bottom: 200,
          left: 320 + (i * 50.0),
          child: Container(
            width: 45,
            height: 60,
            decoration: BoxDecoration(
              color: containerColors[i % containerColors.length],
              borderRadius: BorderRadius.circular(3),
              border: Border.all(color: Colors.black26),
            ),
          ),
        ),
      );
    }
    
    // Second row of containers
    for (int i = 0; i < 6; i++) {
      containers.add(
        Positioned(
          bottom: 260,
          left: 370 + (i * 50.0),
          child: Container(
            width: 45,
            height: 60,
            decoration: BoxDecoration(
              color: containerColors[(i + 4) % containerColors.length],
              borderRadius: BorderRadius.circular(3),
              border: Border.all(color: Colors.black26),
            ),
          ),
        ),
      );
    }
    
    return containers;
  }
}