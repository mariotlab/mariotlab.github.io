import 'package:flutter/material.dart';
import '../widgets/page_layout.dart';

class MaritimeMatrixPage extends StatelessWidget {
  const MaritimeMatrixPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      currentPage: 'Maritime Matrix',
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Maritime Matrix',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF2E7D8B),
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 30),
            
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
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
                        Icons.account_tree,
                        color: const Color(0xFF2E7D8B),
                        size: 32,
                      ),
                      const SizedBox(width: 16),
                      Text(
                        'System Architecture',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF2E7D8B),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'MariOT integrates navigation, propulsion, machinery, power, and steering systems within a unified cyber-physical architecture. Using real ship communication protocols such as NMEA and Modbus, MariOT\'s architecture ensures realistic data flow and synchronization across all subsystems, enabling end-to-end cyber-attack and defense testing.',
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.6,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 40),
            
            // System Components Grid
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 1.2,
              children: [
                _buildSystemCard(
                  Icons.navigation,
                  'Navigation System',
                  'GPS, radar, and electronic chart systems for ship positioning and route planning',
                  Colors.blue,
                ),
                _buildSystemCard(
                  Icons.settings,
                  'Propulsion System',
                  'Engine control, fuel management, and propeller systems for ship movement',
                  Colors.orange,
                ),
                _buildSystemCard(
                  Icons.build,
                  'Machinery System',
                  'Auxiliary engines, pumps, and mechanical systems for ship operations',
                  Colors.green,
                ),
                _buildSystemCard(
                  Icons.power,
                  'Power Management',
                  'Electrical generation, distribution, and load management systems',
                  Colors.purple,
                ),
                _buildSystemCard(
                  Icons.control_camera,
                  'Steering System',
                  'Rudder control, autopilot, and manual steering mechanisms',
                  Colors.red,
                ),
                _buildSystemCard(
                  Icons.network_check,
                  'Communication',
                  'NMEA, Modbus, and other maritime communication protocols',
                  Colors.teal,
                ),
              ],
            ),
            
            const SizedBox(height: 40),
            
            _buildProtocolSection(),
            
            const SizedBox(height: 40),
            
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.green.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.security,
                        color: Colors.green.shade700,
                        size: 28,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'Cybersecurity Testing',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'The integrated architecture enables comprehensive cybersecurity testing across all maritime systems, from individual component vulnerabilities to complex multi-system attack scenarios.',
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.6,
                      color: Colors.green.shade800,
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

  Widget _buildSystemCard(IconData icon, String title, String description, Color color) {
    return Container(
      padding: const EdgeInsets.all(20),
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
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: color,
              size: 28,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800,
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Text(
              description,
              style: TextStyle(
                fontSize: 14,
                height: 1.4,
                color: Colors.grey.shade600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProtocolSection() {
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
            'Communication Protocols',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF2E7D8B),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: _buildProtocolCard('NMEA', 'National Marine Electronics Association standard for marine electronics communication'),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildProtocolCard('Modbus', 'Industrial communication protocol for connecting electronic devices'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _buildProtocolCard('Ethernet', 'High-speed network communication for modern maritime systems'),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildProtocolCard('Serial', 'Traditional point-to-point communication for legacy systems'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProtocolCard(String protocol, String description) {
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
            protocol,
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
