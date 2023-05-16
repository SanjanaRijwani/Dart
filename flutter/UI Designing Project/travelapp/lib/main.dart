import 'package:flutter/material.dart';
import 'package:travelapp/views/booking.dart';
import 'package:travelapp/views/details.dart';
import 'package:travelapp/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Travell With Sanju',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        
        visualDensity: VisualDensity.adaptivePlatformDensity

      ),
      home:  Home(),
    );
  }
}

