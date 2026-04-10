import 'package:flutter/material.dart';
import 'package:taske_app/core/utls/app_style.dart';

class AddNewCommentHeader extends StatelessWidget {
  const AddNewCommentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(color: Colors.white38),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Add Commentt', style: AppStyle.styleSemiBold16(context)),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.close, size: 20, color: Colors.grey.shade600),
              ),
            ],
          ),
          Text('Share your thoughts', style: AppStyle.styleRegular12(context)),
        ],
      ),
    );
    ;
  }
}
