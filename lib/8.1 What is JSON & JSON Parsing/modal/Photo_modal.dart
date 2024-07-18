import 'package:flutter/material.dart';
import 'package:json/8.1%20What%20is%20JSON%20&%20JSON%20Parsing/modal/Photo_modal.dart';

class PhotoModal
{
  List Photos = [];
}

class Photos
{
  late String title,url;

  Photos({required this.title,required this.url});

  factory Photos.fromMap(Map m1)
  {
    return Photos(title: m1['title'],url: m1['url']);
  }
}
