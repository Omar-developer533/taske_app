import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:taske_app/core/utls/app_style.dart';
import 'package:taske_app/features/post/data/models/post_model.dart';
import 'package:taske_app/features/post/presentation/views/widgets/add_new_comment.dart';

import 'package:taske_app/features/post/presentation/views/widgets/comment_details_list_view.dart';
import 'package:taske_app/features/post/presentation/views/widgets/custom_button.dart';
import 'package:taske_app/features/post/presentation/views/widgets/post_details.dart';

class PostDetailsViewBody extends StatelessWidget {
  const PostDetailsViewBody({super.key, required this.post});
  final PostModel post;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 16.h),
          PostDetails(post: post,),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Comments', style: AppStyle.styleMedium16(context)),
              CustomButton(
                buttonName: 'Add Comment',
                nameColor: Colors.white,
                onTap: () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    scrollControlDisabledMaxHeightRatio: 20,
                    context: context,
                    builder: (context) {
                      return const AddNewComment();
                    },
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 20.h),
          const Expanded(child: CommentDetailsListView()),
        ],
      ),
    );
  }
}
