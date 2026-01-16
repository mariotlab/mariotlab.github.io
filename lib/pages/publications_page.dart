import 'package:flutter/material.dart';
import '../widgets/page_layout.dart';
import 'dart:html' as html;

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
              'Oruc, A., Bauk, S., & Zhou, J. (2026). A National Maritime Cyber Security Operations Center (M-SOC) Concept. Journal of Marine Science and Engineering, MDPI, 14(1), January 2026.',
              'A National Maritime Cyber Security Operations Center (M-SOC) Concept',
              'https://www.mdpi.com/2077-1312/14/1/17',
            ),
            
            _buildPublicationItem(
              'Yousaf, A., Kalvin, L. L. Y., Li, M., & Zhou, J. (2026). Spying by SPi, I Got the Birds-Eye. In M. Manulis (Ed.), Applied Cryptography and Network Security Workshops (pp. 121–140). Springer Nature Switzerland.',
              'Spying by SPi, I Got the Birds-Eye',
              'https://www.researchgate.net/publication/396902321_Spying_by_SPi_I_Got_the_Birds-Eye',
            ),
            
            _buildPublicationItem(
              'Yousaf, A., Zhou, J., & Chattopadhyay, S. (2025). Maritime Operational Technology Shipboard Testbed for Cybersecurity Research, Training, Exercises, and Education. IEEE Security & Privacy, 2–12.',
              'Maritime Operational Technology Shipboard Testbed for Cybersecurity Research, Training, Exercises, and Education',
              'https://www.researchgate.net/publication/396607580_Maritime_Operational_Technology_Shipboard_Testbed_for_Cybersecurity_Research_Training_Exercises_and_Education',
            ),
            
            _buildPublicationItem(
              'Zhou, J. (2025). Maritime Cybersecurity: A Big Change Ahead. IEEE Security & Privacy, 23(4), 4–7.',
              'Maritime Cybersecurity: A Big Change Ahead',
              'https://www.researchgate.net/publication/395458031_Maritime_Cybersecurity_A_Big_Change_Ahead',
            ),
            
            _buildPublicationItem(
              'Zeyu Y., Liang H., Yujiao H., Peng C., Jiming C., & Zhou, J. (2025). ADIS: Detecting and Identifying Manipulated PLC Program Variables Using State-Aware Dependency Graph. IEEE Transactions on Information Forensics and Security.',
              'ADIS: Detecting and Identifying Manipulated PLC Program Variables Using State-Aware Dependency Graph',
              'https://www.researchgate.net/publication/398020753_ADIS_Detecting_and_Identifying_Manipulated_PLC_Program_Variables_Using_State-Aware_Dependency_Graph',
            ),
            
            _buildPublicationItem(
              'Yousaf, A., Gunawan, S., Basnet, S., Bolbot, V., Zhou, J., & Valdez Banda, O. A. (2025). STPA-Cyber: A Semi-Automated Cyber Risk Assessment Framework for Maritime Cybersecurity. Computers & Security, 157, 104559.',
              'STPA-Cyber: A Semi-Automated Cyber Risk Assessment Framework for Maritime Cybersecurity',
              'https://www.researchgate.net/publication/392741402_STPA-Cyber_A_semi-automated_cyber_risk_assessment_framework_for_maritime_cybersecurity',
            ),
            
            _buildPublicationItem(
              'Yousaf, A., Amro, A., Kwa, P. T. H., Li, M., & Zhou, J. (2024). Cyber Risk Assessment of Cyber-Enabled Autonomous Cargo Vessel. International Journal of Critical Infrastructure Protection, 46, 100695.',
              'Cyber Risk Assessment of Cyber-Enabled Autonomous Cargo Vessel',
              'https://www.researchgate.net/publication/381444307_Cyber_risk_assessment_of_cyber-enabled_autonomous_cargo_vessel',
            ),
            
            _buildPublicationItem(
              'Yousaf, A., & Zhou, J. (2024). From Sinking to Saving: MITRE ATT&CK and D3FEND Frameworks for Maritime Cybersecurity. International Journal of Information Security, 23(3), 1603–1618.',
              'From Sinking to Saving: MITRE ATT&CK and D3FEND Frameworks for Maritime Cybersecurity',
              'https://www.researchgate.net/publication/377532156_From_sinking_to_saving_MITRE_ATT_CK_and_D3FEND_frameworks_for_maritime_cybersecurity',
            ),
            
            _buildPublicationItem(
              'Li, M., Yousaf, A., Goh, M., Zhou, J., & Chattopadhyay, S. (2024). Guidelines for Cyber Risk Management in Autonomous Shipping. In M. Andreoni (Ed.), Applied Cryptography and Network Security Workshops (pp. 143–161). Springer Nature Switzerland.',
              'Guidelines for Cyber Risk Management in Autonomous Shipping',
              'https://itrust.sutd.edu.sg/wp-content/uploads/2024/01/Guidelines-for-Cyber-Risk-Management-in-Autonomous-Shipping_final.pdf',
            ),
            
            _buildPublicationItem(
              'Meng, J., Yang, Z., Zhang, Z., Geng, Y., Deng, R., Cheng, P., Chen, J., & Zhou, J. (2023). Sepanner: Analyzing Semantics of Controller Variables in Industrial Control Systems based on Network Traffic. Proceedings of the 39th Annual Computer Security Applications Conference, 310–323.',
              'Sepanner: Analyzing Semantics of Controller Variables in Industrial Control Systems based on Network Traffic',
              'https://www.researchgate.net/publication/376201065_SePanner_Analyzing_Semantics_of_Controller_Variables_in_Industrial_Control_Systems_based_on_Network_Traffic',
            ),
            
            _buildPublicationItem(
              'Bytes, A., Rajput, P. H. N., Doumanidis, C., Maniatakos, M., Zhou, J., & Tippenhauer, N. O. (2023). Fieldfuzz: In Situ Blackbox Fuzzing of Proprietary Industrial Automation Runtimes via the Network. Proceedings of the 26th International Symposium on Research in Attacks, Intrusions and Defenses, 499–512.',
              'Fieldfuzz: In Situ Blackbox Fuzzing of Proprietary Industrial Automation Runtimes via the Network',
              'https://www.researchgate.net/publication/374752033_FieldFuzz_In_Situ_Blackbox_Fuzzing_of_Proprietary_Industrial_Automation_Runtimes_via_the_Network',
            ),
            
            _buildPublicationItem(
              'Rajaram, P., Rajasekaran, R., Goh, M., Zhou, J., & Tan, K. (2022). The Need for a Testbed for Strengthening Maritime Cybersecurity. SNAMES 41st Annual Journal, 60–73.',
              'The Need for a Testbed for Strengthening Maritime Cybersecurity',
              'https://www.computer.org/csdl/magazine/sp/2024/04/10621969/1Z5lK0ZMLgk',
            ),
            
            _buildPublicationItem(
              'Rajaram, P., Goh, M., & Zhou, J. (2022). Guidelines for Cyber Risk Management in Shipboard Operational Technology Systems. Journal of Physics: Conference Series, 2311(1), 012002.',
              'Guidelines for Cyber Risk Management in Shipboard Operational Technology Systems',
              'https://itrust.sutd.edu.sg/wp-content/uploads/2022/02/Guidelines-for-Cyber-Risk-Management-in-Shipboard-Operational-Technology-Systems-1st-Ed..pdf',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPublicationItem(String citation, String title, String link) {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title with link
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      final anchor = html.AnchorElement(href: link)
                        ..setAttribute('target', '_blank')
                        ..setAttribute('rel', 'noopener noreferrer');
                      anchor.click();
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF2E7D8B),
                              height: 1.4,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          Icons.open_in_new,
                          size: 16,
                          color: const Color(0xFF2E7D8B),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                // Full citation
                SelectableText(
                  citation,
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.6,
                    color: Colors.grey.shade800,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
