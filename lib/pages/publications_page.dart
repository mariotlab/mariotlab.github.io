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
            
            _buildPublicationItem(
              'Yousaf, A., Kalvin, L. L. Y., Li, M., & Zhou, J. (2026). Spying by SPi, I Got the Birds-Eye. In M. Manulis (Ed.), Applied Cryptography and Network Security Workshops (pp. 121–140). Springer Nature Switzerland.',
            ),
            
            _buildPublicationItem(
              'Yousaf, A., Zhou, J., & Chattopadhyay, S. (2025). Maritime Operational Technology Shipboard Testbed for Cybersecurity Research, Training, Exercises, and Education. IEEE Security & Privacy, 2–12.',
            ),
            
            _buildPublicationItem(
              'Zhou, J. (2025). Maritime Cybersecurity: A Big Change Ahead. IEEE Security & Privacy, 23(4), 4–7.',
            ),
            
            _buildPublicationItem(
              'Zeyu Y., Liang H., Yujiao H., Peng C., Jiming C., & Zhou, J. (2025). ADIS: Detecting and Identifying Manipulated PLC Program Variables Using State-Aware Dependency Graph. IEEE Transactions on Information Forensics and Security.',
            ),
            
            _buildPublicationItem(
              'Yousaf, A., Gunawan, S., Basnet, S., Bolbot, V., Zhou, J., & Valdez Banda, O. A. (2025). STPA-Cyber: A Semi-Automated Cyber Risk Assessment Framework for Maritime Cybersecurity. Computers & Security, 157, 104559.',
            ),
            
            _buildPublicationItem(
              'Yousaf, A., Amro, A., Kwa, P. T. H., Li, M., & Zhou, J. (2024). Cyber Risk Assessment of Cyber-Enabled Autonomous Cargo Vessel. International Journal of Critical Infrastructure Protection, 46, 100695.',
            ),
            
            _buildPublicationItem(
              'Yousaf, A., & Zhou, J. (2024). From Sinking to Saving: MITRE ATT&CK and D3FEND Frameworks for Maritime Cybersecurity. International Journal of Information Security, 23(3), 1603–1618.',
            ),
            
            _buildPublicationItem(
              'Li, M., Yousaf, A., Goh, M., Zhou, J., & Chattopadhyay, S. (2024). Guidelines for Cyber Risk Management in Autonomous Shipping. In M. Andreoni (Ed.), Applied Cryptography and Network Security Workshops (pp. 143–161). Springer Nature Switzerland.',
            ),
            
            _buildPublicationItem(
              'Meng, J., Yang, Z., Zhang, Z., Geng, Y., Deng, R., Cheng, P., Chen, J., & Zhou, J. (2023). Sepanner: Analyzing Semantics of Controller Variables in Industrial Control Systems based on Network Traffic. Proceedings of the 39th Annual Computer Security Applications Conference, 310–323.',
            ),
            
            _buildPublicationItem(
              'Bytes, A., Rajput, P. H. N., Doumanidis, C., Maniatakos, M., Zhou, J., & Tippenhauer, N. O. (2023). Fieldfuzz: In Situ Blackbox Fuzzing of Proprietary Industrial Automation Runtimes via the Network. Proceedings of the 26th International Symposium on Research in Attacks, Intrusions and Defenses, 499–512.',
            ),
            
            _buildPublicationItem(
              'Rajaram, P., Rajasekaran, R., Goh, M., Zhou, J., & Tan, K. (2022). The Need for a Testbed for Strengthening Maritime Cybersecurity. SNAMES 41st Annual Journal, 60–73.',
            ),
            
            _buildPublicationItem(
              'Rajaram, P., Goh, M., & Zhou, J. (2022). Guidelines for Cyber Risk Management in Shipboard Operational Technology Systems. Journal of Physics: Conference Series, 2311(1), 012002.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPublicationItem(String citation) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 8),
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: const Color(0xFF2E7D8B),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: SelectableText(
              citation,
              style: TextStyle(
                fontSize: 15,
                height: 1.6,
                color: Colors.grey.shade800,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
