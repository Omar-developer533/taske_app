import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:taske_app/core/utls/app_style.dart';
import 'package:taske_app/features/post/data/models/post_model.dart';
import 'package:taske_app/features/post/presentation/manager/post_provider.dart';
import 'package:taske_app/features/post/presentation/views/widgets/custom_button.dart';

class DeletePost extends StatelessWidget {
  const DeletePost({super.key, required this.post});
  final PostModel post;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Delete Post', style: AppStyle.styleSemiBold16(context)),
            const SizedBox(height: 10),
            const Text(
              'Are you sure want to delete this post? This will also delete all comments, This action cannot be undone',
            ),
            SizedBox(height: 15.h),
            CustomButton(
              onTap: () async {
                final success = await context.read<PostProvider>().deletePost(
                  context,
                  post.id,
                );
                Navigator.pop(context);
                if (success) {
                  Navigator.pop(context);
                }
              },
              buttonName: 'Delete',
              nameColor: Colors.white,
              buttonColor: Colors.red,
            ),
            SizedBox(height: 5.h),
            CustomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonName: 'Cancel',

              buttonColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
