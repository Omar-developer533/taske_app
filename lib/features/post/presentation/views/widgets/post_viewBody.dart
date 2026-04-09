import 'package:flutter/material.dart';
import 'package:taske_app/features/post/presentation/views/widgets/post.dart';

class PostViewBody extends StatelessWidget {
  const PostViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Post(),
        );
      },
    );
  }
}
