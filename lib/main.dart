import 'package:flutter/material.dart';
import 'package:json/8.1%20What%20is%20JSON%20&%20JSON%20Parsing/provider/Photos_provider.dart';
import 'package:json/8.1(2)%20User%20Data/provider/User_Provider.dart';
import 'package:json/8.1(2)%20User%20Data/view/User_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PhotosProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
      ],
      builder: (context, child) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: User_Page(),
    );
  }
}
