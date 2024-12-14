import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:ox0/core/common/widgets/app_button.dart';
import 'package:ox0/core/common/widgets/logo.dart';
import 'package:ox0/core/common/widgets/my_drawer.dart';
import 'package:ox0/features/blog/data/models/blog_model.dart';

class BlogDetalisTablet extends StatelessWidget {
  final BlogModel postDetails;
  const BlogDetalisTablet({super.key, required this.postDetails});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      drawer: const MyDrawer(
        child: SizedBox.shrink(),
      ),
      appBar: AppBar(
        toolbarHeight: size.height * 0.1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox.shrink(),
            const Logo(),
            AppButton(
              //TODO: Implement onPressed
              onPressed: () {},
              text: 'Let\'s Talk',
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: HtmlWidget(postDetails.details),
            ),
          ),
        ],
      ),
    );
  }
}