import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/models/posts_model/post_model.dart';
import 'package:meta/meta.dart';

part 'posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
  PostsCubit() : super(PostsInitial());
  List<PostModel>? posts;
  fetchAllPosts() async {
    var postsBox = Hive.box<PostModel>(kPostsBox);
    posts = postsBox.values.toList();

    emit(PostsSuccess());
  }
}
