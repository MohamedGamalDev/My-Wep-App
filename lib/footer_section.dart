import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          '© 2024 Mohamed Gamal. All Rights Reserved.',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
