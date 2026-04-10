import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:taske_app/core/api_service.dart';
import 'package:taske_app/features/post/data/repos/post_repo_impl.dart';
import 'package:taske_app/features/post/presentation/manager/post_provider.dart';
import 'package:taske_app/features/post/presentation/views/post_view.dart';

void main() {
  runApp(
     ChangeNotifierProvider(
      create: (_) =>
          PostProvider(postRepo: PostRepoImpl(apiService: ApiService())),
      child: const TaskApp(),
    ),
  );
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return const MaterialApp(debugShowCheckedModeBanner: false, home: PostView());
      },
    );
  }
}
