import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobee/cubits/posts_cubits/add_post_cubit/add_post_cubit.dart';
import 'package:jobee/cubits/posts_cubits/posts_cubit/posts_cubit.dart';
import 'package:jobee/pages/craete_post_pages/add_post.dart';

class CreatePostPage extends StatelessWidget {
  CreatePostPage({super.key});
  static String id = 'CreatePostPage';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddPostCubit(),
      child: BlocConsumer<AddPostCubit, AddPostState>(
        listener: (context, state) {
          if (state is AddPostFailure) {}
          if (state is AddPostSuccess) {
            BlocProvider.of<PostsCubit>(context).fetchAllPosts();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddPostLoading ? true : false,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: AddPost(),
            ),
          );
        },
      ),
    );
  }
}
