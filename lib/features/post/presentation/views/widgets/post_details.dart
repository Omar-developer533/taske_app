import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:taske_app/core/utls/app_style.dart';
import 'package:taske_app/features/post/data/models/post_model.dart';
import 'package:taske_app/features/post/presentation/views/widgets/custom_container.dart';
import 'package:taske_app/features/post/presentation/views/widgets/delete_post.dart';
import 'package:taske_app/features/post/presentation/views/widgets/edite_post.dart';

class PostDetails extends StatelessWidget {
  const PostDetails({super.key, required this.post});
  final PostModel post;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/image/image.svg', height: 36, width: 36),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Mike Chin', style: AppStyle.styleMedium14(context)),
                  Text('22ago', style: AppStyle.styleRegular12(context)),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    scrollControlDisabledMaxHeightRatio: 20,
                    context: context,
                    builder: (context) {
                      return EditePost(post: post);
                    },
                  );
                },
                icon: const Icon(FontAwesomeIcons.penToSquare, size: 16),
              ),
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return DeletePost(post: post);
                    },
                  );
                },
                icon: const Icon(
                  FontAwesomeIcons.trashCan,
                  size: 16,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Text(
            'scnd klm nkd  jnzl d klnj',
            style: AppStyle.styleMedium14(context),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'asjkuhjkghkjkhjhjhjklhkhg SAJK axmx x JALX SALQAS X x aLXJJqx axqjxa jasbbxCJBb cajbJAKKJBC K NDASNJK NJK NJK NJK N JKN FAKn l n ln ln lnjkkjghhjg ',
            style: AppStyle.styleRegular12(context),
          ),
          const SizedBox(height: 20),
          const Divider(height: 20),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.comment,
                  color: Colors.grey.shade400,
                  size: 20,
                ),
              ),

              Text('1  comment', style: AppStyle.styleRegular12(context)),
            ],
          ),
        ],
      ),
    );
  }
}
