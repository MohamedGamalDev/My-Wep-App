import 'package:flutter/material.dart';
import 'home_page.dart';
import 'GITHUB.dart';
void main() {
  runApp(MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      routes: {
        ProjectsSection.route:(context) => ProjectsSection(),
      },
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.teal[400]), // التعديل هنا
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold, color: Colors.white),
          bodyText1: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
      ),
      home: HomePage(),
    );
  }
}
