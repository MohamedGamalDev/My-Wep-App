import 'package:flutter/material.dart';
import 'skill_card.dart';

class SkillsSection extends StatelessWidget {
  final List<Map<String, dynamic>> skills = [
    // {'name': 'Flutter', 'icon': 'assets/images/C-Sharp-Tutorials.webp'},
    // {'name': 'Dart', 'icon': 'assets/images/Dart.png'},
    // {'name': 'C++', 'icon': 'assets/images/ISO_C++_Logo.svg.png'},
    // {'name': 'Python', 'icon': 'assets/images/Python-Symbol.png'},
    // {'name': 'C#', 'icon': 'assets/images/C-Sharp-Tutorials.webp'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(height: 20),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: skills.length,
            itemBuilder: (context, index) {
              return SkillCard(
                name: skills[index]['name']!,
                icon: skills[index]['icon']!,
              );
            },
          ),
        ],
      ),
    );
  }
}
