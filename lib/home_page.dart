import 'package:flutter/material.dart';
import 'hero_section.dart';
import 'skills_section.dart';
import 'ProjectsSection.dart'; // تأكد من أن هذا الملف موجود
import 'experience_section.dart'; // تأكد من أن هذا الملف موجود
import 'contact_section.dart'; // تأكد من أن هذا الملف موجود
import 'footer_section.dart'; // تأكد من أن هذا الملف موجود

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text('Mohamed Gamal - Portfolio'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroSection(),
            SkillsSection(),
            ProjectsSection(),  // هنا كان الخطأ بسبب عدم استيراد الملف
            ExperienceSection(), // هنا كان الخطأ بسبب عدم استيراد الملف
            ContactSection(), // هنا كان الخطأ بسبب عدم استيراد الملف
            FooterSection(), // هنا كان الخطأ بسبب عدم استيراد الملف
          ],
        ),
      ),
    );
  }
}
