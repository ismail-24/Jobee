import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobee/widgets/post_widgets/comment_template.dart';
import 'package:jobee/widgets/post_widgets/post_component.dart';

class PostTemplet extends StatefulWidget {
  PostTemplet({super.key});

  @override
  State<PostTemplet> createState() => _PostTempletState();
}

class _PostTempletState extends State<PostTemplet> {
  bool writeComment = false;
  List<String> comments = [];
  TextEditingController? controller; // Declare the controller variable

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(); // Initialize the controller
  }

  void toggleWriteComment() {
    setState(() {
      writeComment = !writeComment;
    });
  }

  @override
  void dispose() {
    controller?.dispose(); // Dispose the controller when it's no longer needed
    super.dispose();
  }

  void addComment() {
    if (controller!.text.isNotEmpty) {
      setState(() {
        comments.add(controller!.text);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(
        color: Color(0x33E6EAFA),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 16,
                  child: Image(
                      image:
                          AssetImage('assets/icons_svg/post_icons/Avatar.png')),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Yahia ahmed',
                        style: TextStyle(
                          color: Color(0xFF090F24),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '1 h',
                        style: TextStyle(
                          color: Color(0xFF848484),
                          fontSize: 10,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 210,
                ),
                SvgPicture.asset('assets/icons_svg/post_icons/menu.svg')
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'On a first-time visit to New Orleans, there\'s so much to see and do.',
            style: TextStyle(
              color: Color(0xFF090F24),
              fontSize: 10,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
            ),
          ),
          const Divider(
            color: Color(0xFF848484),
            thickness: .3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const PostComponent(
                  assetPath: 'assets/icons_svg/post_icons/love.svg',
                  title: 'Likes',
                ),
                GestureDetector(
                  onTap: () {
                    toggleWriteComment();
                  },
                  child: const PostComponent(
                    assetPath: 'assets/icons_svg/post_icons/comment.svg',
                    title: 'Comment',
                  ),
                ),
                const PostComponent(
                    assetPath: 'assets/icons_svg/post_icons/share.svg',
                    title: 'Share'),
              ],
            ),
          ),
          Visibility(
            visible: writeComment,
            child: Container(
              margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
              padding: const EdgeInsets.only(left: 8),
              color: Colors.white,
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Write a comment',
                  hintStyle: TextStyle(
                    color: Color(0x7F848484),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: comments.length,
            itemBuilder: (context, index) {
              return CommentTemplate(
                comment: comments[index],
              );
            },
          ),
          Visibility(
            visible: controller!.text.isNotEmpty,
            child: CommentTemplate(comment: controller!.text),
          ),
        ],
      ),
    );
  }
}
