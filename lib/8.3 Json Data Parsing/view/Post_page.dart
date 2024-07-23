import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/Post_Provider.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PostsProvider postsProvider = Provider.of<PostsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Posts Json'),
      ),
      body: ListView.builder(
        itemCount: postsProvider.postsModal.posts.length,
        itemBuilder: (context, index) => ListTile(
          leading: Text(postsProvider.postsModal.posts[index].id.toString()),
          title: Text(postsProvider.postsModal.posts[index].title),
          subtitle: Text(postsProvider.postsModal.posts[index].body),
          trailing: Text(
              postsProvider.postsModal.posts[index].reactions.likes.toString()),
        ),
      ),
    );
  }
}