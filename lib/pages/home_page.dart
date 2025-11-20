import 'package:flutter/material.dart';
import '../widgets/page_layout.dart';

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
            // Main Content Section
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
                    'The global maritime fleet is vast and diverse, encompassing ships of varying types, ages, and configurations, each integrating different Information Technology (IT) and Operational Technology (OT) systems. This diversity makes maritime cybersecurity a complex and growing challenge, as vulnerabilities differ across platforms and legacy systems. Conducting cybersecurity experiments on actual vessels is not feasible due to the risks of disrupting or damaging critical onboard systems. To address this challenge, maritime cybersecurity research must be conducted in a controlled environment that replicates shipboard conditions safely and accurately.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.6,
                      color: Colors.grey.shade800,
                      letterSpacing: 0.3,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'MariOT, developed at iTrust, Singapore University of Technology and Design (SUTD), provides such an environment. It is a hybrid maritime cyber-physical testbed comprising simulated, emulated, Hardware-In-the-Loop (HIL)-based, and real shipboard hardware systems. Whenever real ship components are unsuitable for a static laboratory setting, HIL systems are used to achieve high realism. This combination enables high-fidelity maritime simulations for cybersecurity research, training, education, and technology validation while maintaining safety and operational accuracy.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.6,
                      color: Colors.grey.shade800,
                      letterSpacing: 0.3,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'The MariOT network mirrors real-world ship communications by using the same protocols and configurations found in modern vessels. It supports full packet capture for cybersecurity analysis and retains representative vulnerabilities, such as factory default settings and weak passwords, to create realistic training conditions. For example, the navigational bridge adheres to the NMEA (IEC 61162) standard, allowing researchers and seafarers to investigate maritime cybersecurity threats in a setting that faithfully reproduces the technical and operational complexity of real ships.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.6,
                      color: Colors.grey.shade800,
                      letterSpacing: 0.3,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 30),
                  // Network Architecture Image
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/network_architecture.png',
                        height: 800,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.image_not_supported,
                                  color: Colors.grey.shade400,
                                  size: 48,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Image not found',
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

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
                          fontSize: 20,
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
                      fontSize: 14,
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