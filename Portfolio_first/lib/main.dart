import 'package:flutter/material.dart';
import 'package:portfolio_first/about.dart';
import 'package:portfolio_first/projects.dart';

import 'home.dart';


void main() {
  runApp(MaterialApp(
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (context) => MyHome(),
        'about':(context) => MyAbout(),
        'projects':(context) => MyProjects(),
      }));
}
