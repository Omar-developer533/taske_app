import 'package:flutter/material.dart';
import 'package:taske_app/core/utls/functions.dart';
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

  Future<bool> addPost(BuildContext context, Map<String, dynamic> post) async {
    try {
      final newPost = await postRepo.addPost(post);
      posts.insert(0, newPost);
      notifyListeners();
      showSuccessSnackBar(context, "Post added successfully ");
      return true;
    } catch (e) {
      error = e.toString();
      notifyListeners();
      return false;
    }
  }

  Future<bool> deletePost(BuildContext context, int id) async {
    try {
      await postRepo.deletePost(id);
      posts.removeWhere((post) => post.id == id);
      notifyListeners();
      showSuccessSnackBar(context, "Post deleted successfully ");
      return true;
    } catch (e) {
      error = e.toString();
      notifyListeners();
      return false;
    }
  }


  Future<bool> updatePost(int id, Map<String, dynamic> post) async {
  try {
     await postRepo.updatePost(id, post);

    

    notifyListeners();
    return true;
  } catch (e) {
    error = e.toString();
    notifyListeners();
    return false;
  }
}
}
