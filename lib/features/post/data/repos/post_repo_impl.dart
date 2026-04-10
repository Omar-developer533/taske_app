import 'dart:developer';

import 'package:taske_app/core/api_service.dart';
import 'package:taske_app/features/post/data/models/post_model.dart';
import 'package:taske_app/features/post/data/repos/post_repo.dart';

class PostRepoImpl implements PostRepo {
  final ApiService apiService;

  PostRepoImpl({required this.apiService});

  @override
  Future<List<PostModel>> deletePost() async {
    var result = await apiService.deleteRequest('');

    List<PostModel> posts = result.map((e) {
      return PostModel.fromjason(e);
    }).toList();
    return posts;
  }

  @override
  Future<List<PostModel>> getPosts() async {
    List<dynamic> result = await apiService.getRequest('posts');

    List<PostModel> posts = result.map((e) {
      return PostModel.fromjason(e);
    }).toList();

    log(posts.toString());
    return posts;
  }

  @override
  Future<List<PostModel>> addComment(Map<String, dynamic> comment) async {
    var result = await apiService.postRequest('', comment);

    List<PostModel> posts = result.map((e) {
      return PostModel.fromjason(e);
    }).toList();
    return posts;
  }

  @override
  Future<List<PostModel>> addPost(Map<String, dynamic> post) async {
    var result = await apiService.postRequest('', post);

    List<PostModel> posts = result.map((e) {
      return PostModel.fromjason(e);
    }).toList();
    return posts;
  }
}
