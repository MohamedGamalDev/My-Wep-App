import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Experience',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(height: 16.0),
          // Text(
          //   'Company 1: Flutter Developer\nCompany 2: Software Engineer\nCompany 3: Intern at Enactus',
          //   style: Theme.of(context).textTheme.bodyText1,
          // ),
        ],
      ),
    );
  }
}
