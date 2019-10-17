import 'package:flutter/material.dart';
import 'package:Bosch_Hackathon_Apps/LoginPage.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.amber,
    ),
    home: LoginPage(),
  )
);