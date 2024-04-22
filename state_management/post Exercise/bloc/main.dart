import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const posA());
}

class posA extends StatelessWidget {
  const posA({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Posts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => PostBloc(PostService()),
        child: const Pscreen(),
      ),
    );
  }
}

class Pscreen extends StatelessWidget {
  const Pscreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final postBloc = BlocProvider.of<PostBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: BlocBuilder<PostBloc, List<Post>>(
        builder: (context, posts) {
          if (posts.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(posts[index].title),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PostDetailScreen(post: posts[index]),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          postBloc.fetchPosts();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

class PostDetailScreen extends StatelessWidget {
  final Post post;
  const PostDetailScreen({Key? key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(post.id.toString()),
            Text(post.userId.toString()),
            Text(post.title),
            Text(post.body),
          ],
        ),
      ),
    );
  }
}

class Post {
  final int id;
  final int userId;
  final String title;
  final String body;
  Post({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json['body'],
    );
  }
}

class PostService {
  Future<List<Post>> fetchPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/'));
    if (response.statusCode == 200) {
      List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}

class PostBloc extends Cubit<List<Post>> {
  final PostService postService;

  PostBloc(this.postService) : super([]);

  void fetchPosts() async {
    try {
      final posts = await postService.fetchPosts();
      emit(posts);
    } catch (e) {
      throw Exception(e);
    }
  }
}