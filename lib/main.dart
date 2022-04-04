import 'package:flutter/material.dart';
import 'package:travel_app/screens/_screens.dart';
import 'package:travel_app/screens/detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Travel App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DetailScreen()
        // home: const WelcomeScreen()
        );
  }
}
