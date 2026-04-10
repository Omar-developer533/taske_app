import 'package:taske_app/features/post/data/models/post_model.dart';

abstract class PostRepo {
  Future<List<PostModel>> getPosts();
  Future<PostModel> addPost(Map<String,dynamic>post);
  Future<void> deletePost(int id);
  Future<List<PostModel>> addComment(Map<String,dynamic>comment);
}
