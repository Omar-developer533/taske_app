import 'package:flutter/material.dart';
import 'package:taske_app/features/post/presentation/views/widgets/create_new_post.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      backgroundColor: Colors.deepOrangeAccent,
      shape: const CircleBorder(),
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          scrollControlDisabledMaxHeightRatio: 20,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
          clipBehavior: Clip.hardEdge,
          elevation: 0,
          context: context,
          builder: (context) {
            return const CreateNewPost();
          },
        );
      },
      child: const Icon(Icons.add, color: Colors.white),
    );
  }
}
