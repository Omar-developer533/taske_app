
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taske_app/core/utls/app_style.dart';
import 'package:taske_app/features/post/presentation/views/widgets/custom_button.dart';

class DeletePost extends StatelessWidget {
  const DeletePost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Delete Post',
              style: AppStyle.styleSemiBold16(context),
            ),
            SizedBox(height: 10),
            Text(
              'Are you sure want to delete this post? This will also delete all comments, This action cannot be undone',
            ),
            SizedBox(height: 15.h),
            CustomButton(
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
