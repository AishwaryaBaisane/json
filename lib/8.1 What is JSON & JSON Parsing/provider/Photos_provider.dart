import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:json/8.1%20What%20is%20JSON%20&%20JSON%20Parsing/modal/Photo_modal.dart';

class PhotosProvider extends ChangeNotifier
{
  List<Photos> PhotosList = [];
  
  Future<List> jsonParsing()
  async {
    String json = await rootBundle.loadString('assets/json/photos.json');
    List photo = jsonDecode(json);
    return photo;
  }
  
  Future<void> fromList()
  async {
    List photos = await jsonParsing();
    PhotosList = photos.map((e)=> Photos.fromMap(e),).toList();
    notifyListeners();
    
  }
  PhotosProvider()
  {
    fromList();
  }
  
  
}