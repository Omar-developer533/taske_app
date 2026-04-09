import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:taske_app/core/utls/app_style.dart';
import 'package:taske_app/features/post/presentation/views/widgets/custom_floating_action_button.dart';
import 'package:taske_app/features/post/presentation/views/widgets/post_viewBody.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(color: Colors.grey.shade200, width: 2),
        ),
        title: ListTile(
          contentPadding: EdgeInsets.all(8),
          title: Text(
            'Posts',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            '3 posts',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.arrowsRotate, size: 16),
          ),
        ],
      ),
      body: PostViewbody(),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}
