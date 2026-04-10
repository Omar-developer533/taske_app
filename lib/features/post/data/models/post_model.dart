class PostModel {
  // final String userImage, userName, contentPost, comment;
  // final DateTime postDate, commentDate;
  final int id;
  final String title;

  factory PostModel.fromjason(dynamic json) {
    return PostModel(id: json['id'], title: json['title']);
  }

  PostModel({required this.id, required this.title});

  @override
  String toString() {
    return 'PostModel(id: $id, title: $title)';
  }
}
