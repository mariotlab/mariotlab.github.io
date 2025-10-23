import 'package:flutter/material.dart';
import '../widgets/page_layout.dart';
import '../widgets/ship_illustration.dart';

class MariOTHomePage extends StatelessWidget {
  const MariOTHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      currentPage: 'MariOT',
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Overview Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Overview',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF2E7D8B),
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'MariOT is the world\'s first industry-grade maritime cyber-physical system (CPS) testbed developed at iTrust, Singapore University of Technology and Design (SUTD). It provides a realistic shipboard environment for cybersecurity research, training, exercises, education, technology validation, and testing. The testbed tightly integrates real hardware, simulated systems, and Hardware-in-the-Loop (HIL) components to enable high-fidelity experiments on maritime systems such as navigation, propulsion, machinery, and power management.',
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.6,
                      color: Colors.grey.shade800,
                      letterSpacing: 0.3,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 40),
            
            // Ship Illustration Section
            Center(
              child: Column(
                children: [
                  const ShipIllustration(),
                ],
              ),
            ),
            
            const SizedBox(height: 40),
            
            // Key Features Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color(0xFF2E7D8B).withOpacity(0.05),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFF2E7D8B).withOpacity(0.2)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Key Features',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF2E7D8B),
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildFeatureItem('🚢', 'Realistic Shipboard Environment', 'Industry-grade maritime systems simulation'),
                  _buildFeatureItem('🔒', 'Cybersecurity Research', 'Advanced threat detection and defense testing'),
                  _buildFeatureItem('🎓', 'Training & Education', 'Hands-on learning for maritime professionals'),
                  _buildFeatureItem('⚙️', 'Hardware Integration', 'Real hardware with simulated components'),
                  _buildFeatureItem('🌐', 'Multi-System Testing', 'Navigation, propulsion, machinery, and power systems'),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Colors.blue.shade700,
                        size: 28,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'For more information:',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'A. Yousaf, J. Zhou and S. Chattopadhyay, "Maritime Operational Technology Shipboard Testbed for Cybersecurity Research, Training, Exercises, and Education" in IEEE Security & Privacy, vol. , no. 01, pp. 2-12, PrePrints 5555, doi: 10.1109/MSEC.2025.3613711.',
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.6,
                      color: Colors.blue.shade800,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem(String icon, String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            icon,
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade800,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade600,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}