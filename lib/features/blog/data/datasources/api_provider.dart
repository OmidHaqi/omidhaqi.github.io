import 'dart:developer';

import 'package:ox0/core/config/app_constants.dart';
import 'package:ox0/features/blog/data/models/blog_model.dart';
import 'package:pocketbase/pocketbase.dart';

class ApiProvider {
  final pb = PocketBase(AppConstants.baseUrl);


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
      log(e.toString());
    }
  }
}
