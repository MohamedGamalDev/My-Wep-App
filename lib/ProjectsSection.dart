import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(height: 16.0),
          GestureDetector(
            onTap: () => _launchURL(Uri.parse('https://github.com/MohamedGamalDev/Contacts-screen')),
            child: Row(
              children: [
                Text('Project 1: ',style: TextStyle(fontSize: 30,color: Colors.white)),
                Text(
                  'Contacts screen',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.blue),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0), // Space between the projects
          GestureDetector(
            onTap: () => _launchURL(Uri.parse('https://github.com/MohamedGamalDev/XOGAME')),
            child: Row(
              children: [
                Text('Project 2: ',style: TextStyle(fontSize: 30,color: Colors.white)),
                Text(
                  'XO GAME',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.blue),
                ),
              ],
            ),
          ),
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
