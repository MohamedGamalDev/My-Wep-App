import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(height: 16.0),
          GestureDetector(
            onTap: () => _launchURL(Uri.parse('mailto:eng.m07amedelemam4002@gmail.com')),
            child: Row(
              children: [
                Text('Email: ',style: TextStyle(fontSize: 30,color: Colors.white)),
                Text(
                  'eng.m07amedelemam4002@gmail.com',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.blue),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => _launchURL(Uri.parse('tel:+201006413142')),
            child: Row(
              children: [
                Text('Phone: ',style: TextStyle(fontSize: 30,color: Colors.white)),
                Text(
                  '+20 100 641 3142',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.blue),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => _launchURL(Uri.parse('https://www.linkedin.com/in/mohamed-gamal-1a8314264/')),
            child: Row(
              children: [
                Text('LinkedIn: ',style: TextStyle(fontSize: 30,color: Colors.white)),
                Text(
                  'https://www.linkedin.com/in/mohamed-gamal-1a8314264/',
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
