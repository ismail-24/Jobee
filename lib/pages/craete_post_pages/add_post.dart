import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/cubits/posts_cubits/add_post_cubit/add_post_cubit.dart';
import 'package:jobee/models/posts_model/post_model.dart';
import 'package:intl/intl.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  String? post;

  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset(
                'assets/icons_svg/create_post_icons/back.png',
              ),
            ),
            const Text(
              'Create Post',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            BlocBuilder<AddPostCubit, AddPostState>(
              builder: (context, state) {
                return CustomPostButton(
                  isLoading: state is AddPostLoading ? true : false,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var currentDate = DateTime.now();
                      var formattedCurrentDate =
                          DateFormat.yMd().format(currentDate);
                      var postModel = PostModel(
                          title: post!,
                          date: formattedCurrentDate,
                          color: Colors.blue.value);
                      BlocProvider.of<AddPostCubit>(context).addPost(postModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 65),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Form(
              autovalidateMode: autovalidateMode,
              key: formKey,
              child: TextFormField(
                onSaved: (value) {
                  post = value;
                },
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Field is required';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'What do you want to talk about?',
                  hintStyle: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            // const ColorsListView(),
            const Row(
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

class CustomPostButton extends StatelessWidget {
  const CustomPostButton({
    super.key,
    this.onTap,
    required this.isLoading,
  });
  final void Function()? onTap;

  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: isLoading
          ? const SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            )
          : SvgPicture.asset(
              'assets/icons_svg/create_post_icons/post.svg',
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
