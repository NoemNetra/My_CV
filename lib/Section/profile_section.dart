import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  static const List<String> contacts = [
    "Phone: 069315876",
    "Email: noemnetra168@gmail.com",
    "LinkedIn: noem netra",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Contact", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const Divider(thickness: 1, color: Colors.green),
        const SizedBox(height: 12),
        ...contacts.map((contact) => Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                border: Border.all(color: Colors.green.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const Icon(Icons.contact_mail, size: 18, color: Colors.green),
                  const SizedBox(width: 8),
                  Expanded(child: Text(contact)),
                ],
              ),
            )),
      ],
    );
  }
}
