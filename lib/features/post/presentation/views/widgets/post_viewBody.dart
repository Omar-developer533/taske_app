import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taske_app/features/post/presentation/manager/post_provider.dart';
import 'package:taske_app/features/post/presentation/views/post_details_view.dart';
import 'package:taske_app/features/post/presentation/views/widgets/post.dart';

class PostViewBody extends StatefulWidget {
  const PostViewBody({super.key});

  @override
  State<PostViewBody> createState() => _PostViewBodyState();
}

class _PostViewBodyState extends State<PostViewBody> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      Provider.of<PostProvider>(context, listen: false).getPosts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PostProvider>(
      builder: (context, provider, child) {
        if (provider.isLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (provider.error != null) {
          return Text(provider.error!);
        }
        return ListView.builder(
          itemCount: provider.posts.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return PostDetailsView(post: provider.posts[index]);
                      },
                    ),
                  );
                },
                child: Post(post: provider.posts[index]),
              ),
            );
          },
        );
      },
    );
  }
}
