import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreatePostPage extends StatelessWidget {
  const CreatePostPage({super.key});
  static String id = 'CreatePostPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () => Navigator.pop(context),
                child:
                    Image.asset('assets/icons_svg/create_post_icons/back.png')),
            const Text(
              'Create Post',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            SvgPicture.asset('assets/icons_svg/create_post_icons/post.svg')
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 65),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'What do you want to talk about?',
                hintStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CreatePostOption(
                  imagePath: 'assets/icons_svg/create_post_icons/media.svg',
                  title: 'Media',
                ),
                CreatePostOption(
                  imagePath: 'assets/icons_svg/create_post_icons/colors.svg',
                  title: 'Template',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CreatePostOption extends StatelessWidget {
  const CreatePostOption({
    super.key,
    required this.imagePath,
    required this.title,
  });
  final String imagePath, title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(imagePath),
        Text(
          title,
          style: const TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
