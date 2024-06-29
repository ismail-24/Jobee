import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobee/cubits/posts_cubits/posts_cubit/posts_cubit.dart';
import 'package:jobee/models/posts_model/post_model.dart';
import 'package:jobee/widgets/app_bar_component.dart';
import 'package:jobee/widgets/chat_widgets/custom_search_bar.dart';
import 'package:jobee/widgets/post_widgets/post_templet.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    BlocProvider.of<PostsCubit>(context).fetchAllPosts();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return BlocBuilder<PostsCubit, PostsState>(
      builder: (context, state) {
        List<PostModel> posts =
            BlocProvider.of<PostsCubit>(context).posts ?? [];
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            title: Column(
              children: [
                AppBarComponent(),
                SizedBox(height: screenHeight * 0.0279),
                CustomSearchBar()
              ],
            ),
            automaticallyImplyLeading: false,
            toolbarHeight: screenHeight * 0.1619,
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.0389),
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return PostTemplet(
                  post: posts[index],
                );
              },
            ),
          ),
          // Add other views/screens here based on the selected index
        );
      },
    );
  }
}
