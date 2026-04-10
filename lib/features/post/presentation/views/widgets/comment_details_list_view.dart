import 'package:flutter/material.dart';
import 'package:taske_app/features/post/presentation/views/widgets/comment_details.dart';

class CommentDetailsListView extends StatelessWidget {
  const CommentDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: CommentDetails(),
        );
      },
    );
  }
}
