import 'package:flutter/material.dart';
import '../widgets/page_layout.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      currentPage: 'Projects',
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Research Projects',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF2E7D8B),
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 30),
            
            _buildProjectCard(
              '🔧 Hybrid Maritime OT/IT Infrastructure',
              'Development of hybrid maritime cyber-physical systems that integrate operational technology (OT) and information technology (IT) components for enhanced cybersecurity research.',
              Icons.engineering,
            ),
            
            _buildProjectCard(
              '⚠️ Cyber-Attack Experiments',
              'Proof-of-concept cyber-attack experiments demonstrating physical effects, including steering control compromise scenarios and their impact on maritime operations.',
              Icons.security,
            ),
            
            _buildProjectCard(
              '📊 Maritime Cybersecurity Datasets',
              'Creation of realistic maritime cybersecurity datasets capturing both normal operations and attack scenarios for global research community.',
              Icons.dataset,
            ),
            
            _buildProjectCard(
              '🚢 Future Maritime Systems',
              'Future extensions for autonomous and green-energy ship systems, advancing the next generation of sustainable maritime technology.',
              Icons.eco,
            ),
            
            const SizedBox(height: 40),
            
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF2E7D8B).withOpacity(0.1),
                    const Color(0xFF4A9BB3).withOpacity(0.1),
                  ],
                ),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFF2E7D8B).withOpacity(0.3)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.flag,
                        color: const Color(0xFF2E7D8B),
                        size: 28,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'Singapore Maritime Initiative',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF2E7D8B),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'These projects align with Singapore\'s Maritime Transformation Programme (SMI-2022-MTP-05), supporting the nation\'s vision for advanced maritime cybersecurity and digital transformation.',
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.6,
                      color: Colors.grey.shade700,
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

  Widget _buildProjectCard(String title, String description, IconData icon) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFF2E7D8B).withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: const Color(0xFF2E7D8B),
              size: 32,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800,
                    letterSpacing: 0.3,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                    color: Colors.grey.shade600,
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
