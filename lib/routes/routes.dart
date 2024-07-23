import 'package:flutter/material.dart';
import 'package:json/8.1%20What%20is%20JSON%20&%20JSON%20Parsing/view/Photo_Page.dart';
import 'package:json/8.1(2)%20User%20Data/view/User_page.dart';
import 'package:json/8.3%20Json%20Data%20Parsing/view/Post_page.dart';

class MyRoutes{
  static Map<String, Widget Function(BuildContext)> myRoutes = {
    '/' : (context) => const PostsScreen(),
    '/user' : (context) => const User_Page(),
    '/home' : (context) => const PhotosPage(),
  };
}