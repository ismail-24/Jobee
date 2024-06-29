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

  @override
  void toggleWriteComment() {
    setState(() {
      writeComment = !writeComment;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(vertical: screenHight * 0.0187),
      margin: EdgeInsets.only(top: screenHight * 0.0093),
      decoration: const BoxDecoration(
        color: Color(0x33E6EAFA),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.039),
            child: Row(
              children: [
                const ProfilePhoto(),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.0195),
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
                SizedBox(
                  width: screenWidth * 0.512,
                ),
                SvgPicture.asset('assets/icons_svg/post_icons/menu.svg')
              ],
            ),
          ),
          SizedBox(
            height: screenHight * 0.0233,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.0244),
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
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.039),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const PostComponent(
                  assetPath: 'assets/icons_svg/post_icons/love.svg',
                  title: 'Likes',
                  numberOfComments: '10',
                ),
                GestureDetector(
                  onTap: () {
                    toggleWriteComment();
                  },
                  child: PostComponent(
                    assetPath: 'assets/icons_svg/post_icons/comment.svg',
                    title: 'Comment',
                    numberOfComments: '${comments.length}',
                  ),
                ),
                const PostComponent(
                  assetPath: 'assets/icons_svg/post_icons/share.svg',
                  title: 'Share',
                  numberOfComments: '6',
                ),
              ],
            ),
          ),
          Visibility(
            visible: writeComment,
            child: Container(
              margin: EdgeInsets.only(
                  left: screenWidth * 0.039,
                  right: screenWidth * 0.039,
                  bottom: screenHight * 0.0093),
              padding: EdgeInsets.only(left: screenWidth * 0.0195),
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
          Visibility(
            visible: writeComment,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: comments.length,
              itemBuilder: (context, index) {
                return CommentTemplate(
                  comment: comments[index],
                );
              },
            ),
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
