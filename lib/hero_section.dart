import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      height: 400,
      width: double.infinity,
      color: Colors.teal[400],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello, I\'m Mohamed Gamal',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(height: 20),
          Text(
            'Flutter Developer & Software Engineer',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigate to Skills Section
            },
            child: Text('Explore My Work'),
            style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey[900],
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
          ),
        ],
      ),
    );
  }
}
