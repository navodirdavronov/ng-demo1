import 'package:flutter/material.dart';
import 'package:studioprojects/pages/details_page.dart';
import 'package:studioprojects/pages/home_page.dart';
import 'package:studioprojects/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        DetailsPage.id: (context) => DetailsPage(),
        SettingsPage.id: (context) => SettingsPage(),
      },
    );
  }
}
