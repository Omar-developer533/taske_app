

import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      backgroundColor: Colors.deepOrangeAccent,
      shape: CircleBorder(),
      onPressed: () {},
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
