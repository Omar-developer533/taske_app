import 'package:taske_app/features/post/data/models/post_model.dart';

abstract class PostRepo {
  Future<List<PostModel>> getPosts();
  Future<List<PostModel>> addPost(Map<String,dynamic>post);
  Future<List<PostModel>> deletePost();
  Future<List<PostModel>> addComment(Map<String,dynamic>comment);
}
