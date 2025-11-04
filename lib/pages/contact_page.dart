import 'package:flutter/material.dart';
import '../widgets/page_layout.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      currentPage: 'Contact Us',
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF2E7D8B),
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 30),
            
            _buildContactCard(),
            const SizedBox(height: 30),
            _buildLocationCard(),
            
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
                        Icons.handshake,
                        color: const Color(0xFF2E7D8B),
                        size: 28,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'Collaboration Opportunities',
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
                    'We welcome collaboration opportunities with academic institutions, industry partners, and government agencies. Whether you\'re interested in research partnerships, technology validation, or training programs, we\'d love to hear from you.',
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

  Widget _buildContactCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(30),
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
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFF2E7D8B).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.business,
                  color: const Color(0xFF2E7D8B),
                  size: 28,
                ),
              ),
              const SizedBox(width: 16),
              Text(
                'iTrust - Centre for Research in Cybersecurity',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF2E7D8B),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          
          _buildContactItem(
            Icons.school,
            'Institution',
            'Singapore University of Technology and Design (SUTD)',
          ),
          
          _buildContactItem(
            Icons.location_on,
            'Address',
            '8 Somapah Road, Singapore 487372',
          ),
          
          _buildContactItem(
            Icons.email,
            'General Inquiries',
            'itrust@sutd.edu.sg',
          ),
          
          _buildContactItem(
            Icons.language,
            'Website',
            'www.itrust.sutd.edu.sg',
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: const Color(0xFF2E7D8B),
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade600,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade800,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLocationCard() {
    return Container(
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
                Icons.map,
                color: Colors.blue.shade700,
                size: 28,
              ),
              const SizedBox(width: 12),
              Text(
                'Visit Us',
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
            'Located in the heart of Singapore\'s eastern region, SUTD is easily accessible by public transport and car. The iTrust centre is housed within the university\'s state-of-the-art facilities.',
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
              color: Colors.blue.shade800,
            ),
          ),
          const SizedBox(height: 16),
          _buildDirectionItem('🚇', 'MRT: Changi Airport (CG2) - 10 minutes by bus'),
          _buildDirectionItem('🚌', 'Bus: Multiple routes serve the area'),
          _buildDirectionItem('🚗', 'Car: Ample parking available on campus'),
        ],
      ),
    );
  }

  Widget _buildDirectionItem(String icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            icon,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: Colors.blue.shade800,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickLinksCard() {
    return Container(
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
          Text(
            'Quick Links',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF2E7D8B),
            ),
          ),
          const SizedBox(height: 20),
          
          _buildQuickLinkItem(Icons.info, 'About iTrust'),
          _buildQuickLinkItem(Icons.school, 'SUTD Homepage'),
          _buildQuickLinkItem(Icons.article, 'Research Publications'),
          _buildQuickLinkItem(Icons.event, 'Upcoming Events'),
          _buildQuickLinkItem(Icons.people, 'Career Opportunities'),
          
          const SizedBox(height: 24),
          
          Text(
            'Social Media',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF2E7D8B),
            ),
          ),
          const SizedBox(height: 16),
          
          Row(
            children: [
              _buildSocialButton(Icons.facebook, 'Facebook'),
              const SizedBox(width: 12),
              _buildSocialButton(Icons.alternate_email, 'Twitter'),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _buildSocialButton(Icons.work, 'LinkedIn'),
              const SizedBox(width: 12),
              _buildSocialButton(Icons.video_library, 'YouTube'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQuickLinkItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: () {
          // TODO: Implement navigation to external links
        },
        child: Row(
          children: [
            Icon(
              icon,
              color: const Color(0xFF2E7D8B),
              size: 18,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade700,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey.shade400,
              size: 12,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialButton(IconData icon, String platform) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFF2E7D8B).withOpacity(0.1),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: const Color(0xFF2E7D8B),
              size: 16,
            ),
            const SizedBox(width: 6),
            Text(
              platform,
              style: TextStyle(
                fontSize: 12,
                color: const Color(0xFF2E7D8B),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTeamSection() {
    return Container(
      width: double.infinity,
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
          Text(
            'Research Team',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF2E7D8B),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'The MariOT project is led by a multidisciplinary team of researchers specializing in cybersecurity, maritime systems, and cyber-physical systems. Our team combines expertise from computer science, engineering, and maritime operations to deliver cutting-edge research and practical solutions.',
            style: TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: _buildTeamCard('Principal Investigators', 'Leading the research direction and strategic vision'),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildTeamCard('Research Engineers', 'Developing and maintaining the testbed infrastructure'),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildTeamCard('Graduate Students', 'Contributing to research and conducting experiments'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTeamCard(String title, String description) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF2E7D8B).withOpacity(0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF2E7D8B).withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF2E7D8B),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              height: 1.4,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
