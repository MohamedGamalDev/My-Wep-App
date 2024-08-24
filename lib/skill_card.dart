import 'package:flutter/material.dart';

class SkillCard extends StatelessWidget {
  final String name;
  final String icon;

  SkillCard({required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal[100],
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon, // استخدام `Image.asset` لعرض الصور المحلية
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
