import 'package:flutter/material.dart';
import 'package:taske_app/features/post/data/models/post_model.dart';
import 'package:taske_app/features/post/data/repos/post_repo.dart';

class PostProvider extends ChangeNotifier {
  final PostRepo postRepo;

  PostProvider({required this.postRepo});

  List<PostModel> posts = [];
  bool isLoading = false;
  String? error;

 
  Future<void> getPosts() async {
    isLoading = true;
    notifyListeners();

    try {
      posts = await postRepo.getPosts();
    } catch (e) {
      error = e.toString();
    }

    isLoading = false;
    notifyListeners();
  }
}