import 'package:flutter/material.dart';
import 'section/contact_section.dart';
import 'section/education_section.dart';
import 'section/languages_section.dart';
import 'section/skills_section.dart';
import 'section/work_experience_section.dart';
import 'section/references_section.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ✅ Left Sidebar
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green.shade50,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // ✅ Circular profile image
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: const AssetImage('assets/netra.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "NOEM NETRA",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "JUNIOR FLUTTER DEVELOPER",
                      style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                    ),
                    const SizedBox(height: 16),
                    const ContactSection(),
                    const SizedBox(height: 16),
                    const EducationSection(),
                    const SizedBox(height: 16),
                    const LanguagesSection(),
                  ],
                ),
              ),
            ),
          ),
          // ✅ Right Content
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey.shade50,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SkillsSection(),
                    SizedBox(height: 16),
                    WorkExperienceSection(),
                    SizedBox(height: 16),
                    ReferencesSection(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
