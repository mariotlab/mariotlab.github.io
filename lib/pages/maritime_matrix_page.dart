import 'package:flutter/material.dart';
import '../widgets/page_layout.dart';

class MaritimeMatrixPage extends StatelessWidget {
  const MaritimeMatrixPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      currentPage: 'Maritime Matrix',
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.construction,
                size: 120,
                color: const Color(0xFF2E7D8B).withOpacity(0.5),
              ),
              const SizedBox(height: 40),
              Text(
                'Maritime Matrix',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF2E7D8B),
                  letterSpacing: 0.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                'Coming Soon',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey.shade600,
                  letterSpacing: 0.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFF2E7D8B).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xFF2E7D8B).withOpacity(0.3),
                  ),
                ),
                child: SelectableText(
                  'The Maritime Matrix page is currently under development.\nPlease check back soon for updates.',
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.6,
                    color: Colors.grey.shade700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}