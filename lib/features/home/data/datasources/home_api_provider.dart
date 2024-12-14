import 'dart:developer';

import 'package:ox0/features/home/data/models/home_model.dart';
import 'package:ox0/locator.dart';
import 'package:pocketbase/pocketbase.dart';

class HomeApiProvider {
  final pb = locator<PocketBase>();

  List<HomeModel> homeItem = [];

  getHomeItem() async {
    try {
      final records =
          await pb.collection('home').getFullList(sort: '-created');
      List<HomeModel> homeItems = records
          .map(
            (post) => HomeModel.fromJson(
              post.toJson(),
            ),
          )
          .toList();
      homeItem = homeItems;
    } catch (e) {
      log(
        e.toString(),
      );
    }
  }
}
