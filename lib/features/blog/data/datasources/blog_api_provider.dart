import 'dart:developer';
import 'package:ox0/features/blog/data/models/blog_model.dart';
import 'package:ox0/locator.dart';
import 'package:pocketbase/pocketbase.dart';

class BlogApiProvider {
  final pb = locator<PocketBase>();

  List<BlogModel> postList = [];

  getPosts() async {
    try {
      final records =
          await pb.collection('blogs').getFullList(sort: '-created');
      List<BlogModel> postsList = records
          .map(
            (post) => BlogModel.fromJson(
              post.toJson(),
            ),
          )
          .toList();
      postList = postsList;
    } catch (e) {
      log(
        e.toString(),
      );
    }
  }

  Future<BlogModel?> getPostBySlug(String slug) async {
    try {
      final record =
          await pb.collection('blogs').getFirstListItem('slug="$slug"');
      return BlogModel.fromJson(record.toJson());
    } catch (e) {
      log(
        e.toString(),
      );
      return null;
    }
  }
}
