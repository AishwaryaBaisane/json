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
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          bottomOpacity: 3,
          elevation: 3,
          shadowColor: Colors.white,
          title: Text(
            'Json Data',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: photosProvider.PhotosList.length,
          itemBuilder: (context, index) => Card(
            margin: EdgeInsets.all(7),
            color: Colors.white,
            child: ListTile(
              title: Text(
                photosProvider.PhotosList[index].title,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              leading: Container(
                height: 150,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      photosProvider.PhotosList[index].url,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
