import 'package:flutter/material.dart';
import 'package:taske_app/features/post/presentation/views/post_view.dart';

void main() {
  runApp(TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: PostView());
  }
}
