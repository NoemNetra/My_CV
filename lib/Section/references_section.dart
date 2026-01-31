import 'package:flutter/material.dart';

class ReferencesSection extends StatelessWidget {
  const ReferencesSection({super.key});

  static const List<String> references = [
    "Available upon request",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("References", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        ...references.map(
          (ref) => Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              border: Border.all(color: Colors.green.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                const Icon(Icons.person_outline, size: 18, color: Colors.green),
                const SizedBox(width: 8),
                Expanded(child: Text(ref)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
