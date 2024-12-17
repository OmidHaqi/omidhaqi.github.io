import 'dart:developer';

import 'package:ox0/features/about/data/models/about_model.dart';
import 'package:ox0/locator.dart';
import 'package:pocketbase/pocketbase.dart';

class AboutApiProvider {
  final pb = locator<PocketBase>();

  List<AboutModel> aboutItem = [];

  getAboutItem() async {
    try {
      final records =
          await pb.collection('about').getFullList(sort: '-created');
      List<AboutModel> aboutItems = records
          .map(
            (post) => AboutModel.fromJson(
              post.toJson(),
            ),
          )
          .toList();
      aboutItem = aboutItems;
    } catch (e) {
      log(
        e.toString(),
      );
    }
  }
}
