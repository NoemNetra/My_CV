import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  static const List<String> skills = [
    "Project Management",
    "Public Relations",
    "Teamwork",
    "Time Management",
    "Leadership",
    "Effective Communication",
    "Critical Thinking",
    "Interpersonal Skills",
    "Communicative Skills",
    "Hard-working and Friendly",
    "Prefer Learning and Researching About My Passion Skills",
    "Willing to Learn How to Grow",
    "Punctual",
    "Fast Learner",
    "Pay Attention to Work",
    "Proactive",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Skills", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        ...skills.map(
          (skill) => Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              border: Border.all(color: Colors.green.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                const Icon(Icons.check_circle_outline, size: 18, color: Colors.green),
                const SizedBox(width: 8),
                Expanded(child: Text(skill)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
