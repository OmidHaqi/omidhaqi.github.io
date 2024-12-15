import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:ox0/core/common/widgets/desktop_app_bar.dart';
import 'package:ox0/features/blog/data/models/blog_model.dart';

class BlogDetalisDesktop extends StatelessWidget {
  final BlogModel postDetails;
  const BlogDetalisDesktop({
    super.key,
    required this.postDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
