import 'dart:developer';

import 'package:ox0/features/works/data/models/works_model.dart';
import 'package:ox0/locator.dart';
import 'package:pocketbase/pocketbase.dart';

class WorksApiProvider {
  final pb = locator<PocketBase>();

  List<WorksModel> workList = [];

  getWorks() async {
    try {
      final records =
          await pb.collection('works').getFullList(sort: '-created');
      List<WorksModel> worksList = records
          .map(
            (work) => WorksModel.fromJson(
              work.toJson(),
            ),
          )
          .toList();
      workList = worksList;
    } catch (e) {
      log(
        e.toString(),
      );
    }
  }

  getWorkBySlug(String slug) async {
    try {
      final record =
          await pb.collection('works').getFirstListItem('slug="$slug"');
      return WorksModel.fromJson(record.toJson());
    } catch (e) {
      log(
        e.toString(),
      );
      return null;
    }
  }
}
