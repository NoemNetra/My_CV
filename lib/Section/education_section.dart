import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  static const List<String> education = [
    "Feb 2023 – Present: Bachelor of Engineering (Telecommunication & Network Engineering), ITC",
    "2024 – Present: General English, Paññāsāstra University of Cambodia",
    "Aug 2016 – Dec 2022: Ta Oak High School, Kampong Thom",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Education", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        ...education.map(
          (edu) => Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              border: Border.all(color: Colors.green.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                const Icon(Icons.school, size: 18, color: Colors.green),
                const SizedBox(width: 8),
                Expanded(child: Text(edu)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
