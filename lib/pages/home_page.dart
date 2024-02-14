import 'package:flutter/material.dart';
import 'package:jobee/widgets/app_bar_component.dart';
import 'package:jobee/widgets/chat_widgets/custom_search_bar.dart';
import 'package:jobee/widgets/post_widgets/post_templet.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';
  List posts = [
    CustomSearchBar(),
    PostTemplet(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const AppBarComponent(),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return posts[index];
          },
        ),
      ),
      // Add other views/screens here based on the selected index
    );
  }
}
