import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:taske_app/core/utls/app_style.dart';
import 'package:taske_app/features/post/data/models/post_model.dart';
import 'package:taske_app/features/post/presentation/views/widgets/user_information.dart';

class Post extends StatelessWidget {
  const Post({super.key, required this.post});
  final PostModel post;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.orangeAccent),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserInformation(),
            Text(
              'scnd klm nkd  jnzl d klnj',
              style: AppStyle.styleMedium14(context),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              post.title,
              style: AppStyle.styleRegular12(context),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.comment,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                ),

                Text('1', style: AppStyle.styleRegular12(context)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
