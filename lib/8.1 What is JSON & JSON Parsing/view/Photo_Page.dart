import 'package:flutter/material.dart';
import 'package:json/8.1%20What%20is%20JSON%20&%20JSON%20Parsing/provider/Photos_provider.dart';
import 'package:provider/provider.dart';

class PhotosPage extends StatelessWidget {
  const PhotosPage({super.key});

  @override
  Widget build(BuildContext context) {
    PhotosProvider photosProvider = Provider.of(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Json Data'),
        ),
        body: ListView.builder(
          itemCount: photosProvider.PhotosList.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(photosProvider.PhotosList[index].title),
            leading: Container(
              height: 100,
              width: 80,
              child: Image(
                image: NetworkImage(
                  photosProvider.PhotosList[index].url,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
