import 'dart:developer';

import 'package:taske_app/core/api_service.dart';
import 'package:taske_app/features/post/data/models/post_model.dart';
import 'package:taske_app/features/post/data/repos/post_repo.dart';

class PostRepoImpl implements PostRepo {
  final ApiService apiService;

  PostRepoImpl({required this.apiService});

  @override
  Future<void> deletePost(int id) async {
    await apiService.deleteRequest('posts/$id');
  }

  @override
  Future<List<PostModel>> getPosts() async {
    List<dynamic> result = await apiService.getRequest('posts');

    List<PostModel> posts = result.map((e) {
      return PostModel.fromjason(e);
    }).toList();

    return posts;
  }

  @override
  Future<List<PostModel>> addComment(Map<String, dynamic> comment) async {
    var result = await apiService.postRequest('posts/1', comment);

    List<PostModel> posts = result.map((e) {
      return PostModel.fromjason(e);
    }).toList();
    return posts;
  }

  @override
  Future<PostModel> addPost(Map<String, dynamic> post) async {
    var result = await apiService.postRequest('posts', post);

    return PostModel.fromjason(result);
  }
}
