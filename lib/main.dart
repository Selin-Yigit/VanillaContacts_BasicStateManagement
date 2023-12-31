import 'package:flutter/material.dart';
import 'package:vanillacontacts_course/homePageScreen.dart';
import 'package:vanillacontacts_course/newContactView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (BuildContext context) => const HomePage(),
        "/new-contact":(BuildContext context) => const NewContactView(),
      },
      initialRoute: "/",
    );
  }
}
