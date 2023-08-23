import 'dart:convert';

import 'package:card_from_api/post.dart';
import 'package:card_from_api/post_card.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          title: const Text("Card From Api"),
        ),
        body: FutureBuilder(
          future: http.get(Uri.https("jsonplaceholder.typicode.com", 'posts')),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final List<dynamic> data =
                  jsonDecode(snapshot.data?.body ?? jsonEncode([]));

              final List<Post> posts = [Post.fromJSON(data[0])];

              for (var element in data) {
                posts.add(Post.fromJSON(element));
              }

              return ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(16),
                  child: PostCard(
                    key: ValueKey(posts[index].id),
                    child: posts[index],
                  ),
                ),
              );
            }

            return Container();
          },
        ),
      ),
    );
  }
}
