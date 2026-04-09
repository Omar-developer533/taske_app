import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:taske_app/core/utls/app_style.dart';

class Post extends StatelessWidget {
  const Post({super.key});

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
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: SvgPicture.asset(
                'assets/image/image.svg',
                height: 36,
                width: 36,
              ),
              title: Text('Mike Chin', style: AppStyle.styleMedium14(context)),
              subtitle: Text('22ago', style: AppStyle.styleRegular12(context)),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              ),
            ),
            Text(
              'scnd klm nkd  jnzl d klnj',
              style: AppStyle.styleMedium14(context),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              'asjk SAJK axmx x JALX SALQAS X x aLXJJqx axqjxa jasbbxCJBb cajbJAKKJBC K NDASNJK NJK NJK NJK N JKN FAKn l n ln ln ln ',
              style: AppStyle.styleRegular12(context),
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
