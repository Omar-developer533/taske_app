import 'package:flutter/material.dart';
import 'package:taske_app/core/utls/app_style.dart';

class EditePostHeader extends StatelessWidget {
  const EditePostHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(color: Colors.white38),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Edit Post', style: AppStyle.styleSemiBold16(context)),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.close, size: 20, color: Colors.grey.shade600),
              ),
            ],
          ),
          Text(
            'Update your post details below',
            style: AppStyle.styleRegular12(context),
          ),
        ],
      ),
    );
    ;
  }
}
