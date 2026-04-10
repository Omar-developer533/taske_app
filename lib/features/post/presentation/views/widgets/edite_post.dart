import 'package:flutter/material.dart';

import 'package:taske_app/features/post/presentation/views/widgets/edite_post_body.dart';
import 'package:taske_app/features/post/presentation/views/widgets/edite_post_header.dart';

class EditePost extends StatelessWidget {
  const EditePost({super.key});

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
            EditePostHeader(),
            SizedBox(height: 30),
            EditePostBody(),

            SizedBox(height: MediaQuery.sizeOf(context).height * .1),
          ],
        ),
      ),
    );
  }
}
