import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobee/models/posts_model/post_model.dart';
import 'package:jobee/widgets/post_widgets/comment_template.dart';
import 'package:jobee/widgets/post_widgets/post_component.dart';
import 'package:jobee/widgets/post_widgets/profile_photo.dart';

class PostTemplet extends StatefulWidget {
  PostTemplet({super.key, required this.post});
  final PostModel post;

  @override
  State<PostTemplet> createState() => _PostTempletState();
}

class _PostTempletState extends State<PostTemplet> {
  bool writeComment = false;
  List<String> comments = [];
  final controller = TextEditingController();
  // Declare the controller variable

  @override
  void toggleWriteComment() {
    setState(() {
      writeComment = !writeComment;
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      margin: const EdgeInsets.only(top: 8),
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
                const ProfilePhoto(),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Yahia ahmed',
                        style: TextStyle(
                          color: Color(0xFF090F24),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        widget.post.date,
                        style: const TextStyle(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              widget.post.title,
              style: const TextStyle(
                color: Color(0xFF090F24),
                fontSize: 16,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 3,
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
                  title: 'Share',
                ),
              ],
            ),
          ),
          Visibility(
            visible: writeComment,
            child: Container(
              margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
              padding: const EdgeInsets.only(left: 8),
              color: Colors.white,
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Write a comment',
                  hintStyle: const TextStyle(
                    color: Color(0x7F848484),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.send, color: Color(0xFF072AC8)),
                    onPressed: () {
                      setState(() {
                        comments.add(controller.text);
                        controller.clear(); // Clear the TextField
                      });
                    },
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
            visible: controller.text.isNotEmpty,
            child: CommentTemplate(comment: controller.text),
          ),
        ],
      ),
    );
  }
}
