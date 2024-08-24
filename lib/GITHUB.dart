import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class ProjectsSection extends StatelessWidget {
  static const String route='ProjectsSection';
  final List<Project> projects = [
    Project(name: 'Project 1', url: 'https://github.com/MohamedGamalDev/Contacts-screen'),
    Project(name: 'Project 2', url: 'https://github.com/username/project2'),
    Project(name: 'Project 3', url: 'https://github.com/username/project3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Projects',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(height: 16.0),
          ...projects.map((project) => GestureDetector(
            onTap: () => _launchURL(Uri.parse(project.url)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                project.name,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.blue),
              ),
            ),
          )),
        ],
      ),
    );
  }

  void _launchURL(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class Project {
  final String name;
  final String url;

  Project({required this.name, required this.url});
}
