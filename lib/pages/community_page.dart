import 'package:flutter/material.dart';
import 'package:jobee/widgets/app_bar_component.dart';
import 'package:jobee/widgets/post_widgets/post_templet.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);
  static String id = 'CommunityPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const AppBarComponent(),
        automaticallyImplyLeading: false,
      ),
      body: PostTemplet(),
      // Add other views/screens here based on the selected index
    );
  }
}
