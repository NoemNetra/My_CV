import 'package:flutter/material.dart';

class WorkExperienceSection extends StatelessWidget {
  const WorkExperienceSection({super.key});

  static const List<String> experiences = [
    "Institute of Technology of Cambodia: Completed course C/C++ with project Coffee Management",
    "Java OOP Project: Developed Ticket Management system using Java OOP",
    "Dormitory and ITC Volunteering: Participated in Khmer volunteering on March 6–7, 2025 (Happy New Year)",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Work Experience", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        ...experiences.map(
          (exp) => Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              border: Border.all(color: Colors.green.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                const Icon(Icons.work_outline, size: 18, color: Colors.green),
                const SizedBox(width: 8),
                Expanded(child: Text(exp)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
