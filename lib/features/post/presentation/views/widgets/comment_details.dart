import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taske_app/core/utls/app_style.dart';
import 'package:taske_app/features/post/presentation/views/widgets/custom_container.dart';
import 'package:taske_app/features/post/presentation/views/widgets/user_information.dart';

class CommentDetails extends StatelessWidget {
  const CommentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const UserInformation(),
          SizedBox(height: 8.h),
          Text(
            'hvdvhsajkhaslkhahlkjhasjlkjvhv',
            style: AppStyle.styleRegular12(context),
          ),
        ],
      ),
    );
  }
}
