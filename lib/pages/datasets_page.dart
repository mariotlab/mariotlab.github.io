import 'package:flutter/material.dart';
import '../widgets/page_layout.dart';
import 'dart:html' as html;

class DatasetsPage extends StatelessWidget {
  const DatasetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      currentPage: 'Datasets',
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.open_in_new,
                size: 100,
                color: const Color(0xFF2E7D8B),
              ),
              const SizedBox(height: 40),
              Text(
                'MariOT Datasets',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF2E7D8B),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blue.shade200),
                ),
                child: Column(
                  children: [
                    Text(
                      'The datasets are hosted on the iTrust website.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          // Create a temporary anchor element and click it
                          final anchor = html.AnchorElement(href: 'https://itrust.sutd.edu.sg/itrust-labs_datasets/')
                            ..setAttribute('target', '_blank')
                            ..setAttribute('rel', 'noopener noreferrer');
                          anchor.click();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                          decoration: BoxDecoration(
                            color: const Color(0xFF2E7D8B),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.open_in_new, color: Colors.white),
                              SizedBox(width: 8),
                              Text(
                                'Visit iTrust Datasets Page',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Note: If the page shows an error on first load, simply refresh it.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.orange.shade700,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}