import 'package:flutter/material.dart';
import 'package:taske_app/features/post/data/models/post_model.dart';

import 'package:taske_app/features/post/presentation/views/widgets/edite_post_body.dart';
import 'package:taske_app/features/post/presentation/views/widgets/edite_post_header.dart';

class EditePost extends StatelessWidget {
  const EditePost({super.key, required this.post});
  final PostModel post;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16,
        right: 16,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const EditePostHeader(),
            const SizedBox(height: 30),
             EditePostBody(post:post ,),

            SizedBox(height: MediaQuery.sizeOf(context).height * .1),
          ],
        ),
      ),
    );
  }
}
