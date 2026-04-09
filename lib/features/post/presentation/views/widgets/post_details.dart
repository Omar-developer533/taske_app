import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:taske_app/core/utls/app_style.dart';
import 'package:taske_app/features/post/presentation/views/widgets/custom_container.dart';

class PostDetails extends StatelessWidget {
  const PostDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/image/image.svg', height: 36, width: 36),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Mike Chin', style: AppStyle.styleMedium14(context)),
                  Text('22ago', style: AppStyle.styleRegular12(context)),
                ],
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(FontAwesomeIcons.penToSquare, size: 16),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.trashCan,
                  size: 16,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
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
          SizedBox(height: 20),
          Divider(height: 20),
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
