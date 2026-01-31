import 'package:flutter/material.dart';

class LanguagesSection extends StatelessWidget {
  const LanguagesSection({super.key});

  static const List<String> languages = [
    "Khmer: Mother Tongue",
    "English: Upper Intermediate (reading, writing, listening, speaking)",
    "French: Basic",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Languages", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        ...languages.map(
          (lang) => Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              border: Border.all(color: Colors.green.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                const Icon(Icons.language, size: 18, color: Colors.green),
                const SizedBox(width: 8),
                Expanded(child: Text(lang)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
