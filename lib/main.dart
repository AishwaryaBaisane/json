import 'package:flutter/material.dart';
import 'package:json/8.1%20What%20is%20JSON%20&%20JSON%20Parsing/provider/Photos_provider.dart';
import 'package:json/8.1%20What%20is%20JSON%20&%20JSON%20Parsing/view/Photo_Page.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PhotosProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PhotosPage(),
      ),
    );
  }
}
