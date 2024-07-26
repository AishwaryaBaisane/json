import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/post_provider.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    PostsProvider postsProvider = Provider.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          bottomOpacity: 3,
          elevation: 2,
          shadowColor: Colors.white,
          title: Text(
            'Json Data',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: postsProvider.postsModal.posts.length,
            itemBuilder: (context, index) => Card(
              elevation: 4,
              // margin: EdgeInsets.all(5),
              color: Colors.white,
              child: ListTile(
                  title: Text(
                    textAlign: TextAlign.center,
                    postsProvider.postsModal.posts[index].title,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                  subtitle: Column(
                    children: [
                      Text(
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                        postsProvider.postsModal.posts[index].body,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.remove_red_eye_outlined,
                            size: 23,
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            postsProvider.postsModal.posts[index].views
                                .toString(),
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: width * 0.2,),
                          Icon(
                            Icons.perm_identity_sharp,
                            size: 23,
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            postsProvider.postsModal.posts[index].userId
                                .toString(),
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: width * 0.2,),
                          Icon(
                            Icons.favorite_border,
                            size: 23,
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            postsProvider
                                .postsModal.posts[index].reactions.likes
                                .toString(),
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}

