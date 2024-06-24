import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/models/posts_model/post_model.dart';
import 'package:meta/meta.dart';

part 'add_post_state.dart';

class AddPostCubit extends Cubit<AddPostState> {
  AddPostCubit() : super(AddPostInitial());

  Color color = const Color(0xffFE5F55);
  addPost(PostModel post) async {
    post.color = color.value;
    emit(AddPostLoading());
    try {
      var postsBox = Hive.box<PostModel>(kPostsBox);
      await postsBox.add(post);
      emit(AddPostSuccess());
    } catch (e) {
      emit(AddPostFailure(e.toString()));
    }
  }
}
