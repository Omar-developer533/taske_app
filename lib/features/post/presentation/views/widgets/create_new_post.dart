import 'package:flutter/material.dart';
import 'package:taske_app/features/post/presentation/views/widgets/creat_new_post_header.dart';
import 'package:taske_app/features/post/presentation/views/widgets/create_new_post_body.dart';

class CreateNewPost extends StatelessWidget {
  const CreateNewPost({super.key});

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
            const CreatNewPostHeader(),
            const SizedBox(height: 30),
            const CreateNewPostBody(),

            SizedBox(height: MediaQuery.sizeOf(context).height * .1),
          ],
        ),
      ),
    );
  }
}
