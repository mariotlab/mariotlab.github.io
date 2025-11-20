import 'package:flutter/material.dart';
import '../widgets/page_layout.dart';

class PublicationsPage extends StatelessWidget {
  const PublicationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      currentPage: 'Publications',
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Publications',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF2E7D8B),
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 30),
            
            _buildPublicationCard(
              'MariOT: Maritime Operational Technology Shipboard Testbed for Cybersecurity Research, Training, Exercises, and Education',
              'Yousaf, A., Zhou, J., & Chattopadhyay, S.',
              'IEEE Cybersecurity Magazine, 2025',
              'This paper presents the design and implementation of MariOT, the world\'s first industry-grade maritime cyber-physical system testbed for comprehensive cybersecurity research.',
              Icons.article,
            ),
            
            _buildPublicationCard(
              'Maritime Cyber Risk Assessment Framework',
              'Research Team at iTrust, SUTD',
              'Under Review, 2025',
              'A comprehensive framework for assessing cybersecurity risks in maritime operational technology systems, with practical applications in the shipping industry.',
              Icons.assessment,
            ),
            
            _buildPublicationCard(
              'STPA-Cyber: Systems-Theoretic Process Analysis for Maritime Cybersecurity',
              'iTrust Research Collaboration',
              'In Preparation, 2025',
              'Advanced systems-theoretic approach to analyzing cybersecurity threats in maritime environments using STPA methodology.',
              Icons.psychology,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPublicationCard(String title, String authors, String venue, String abstract, IconData icon) {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFF2E7D8B).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  icon,
                  color: const Color(0xFF2E7D8B),
                  size: 24,
                ),
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
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800,
                        height: 1.3,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      authors,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF2E7D8B),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      venue,
                      style: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            abstract,
            style: TextStyle(
              fontSize: 15,
              height: 1.5,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
