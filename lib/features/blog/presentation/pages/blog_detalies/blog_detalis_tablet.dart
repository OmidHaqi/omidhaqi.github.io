import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:ox0/core/common/widgets/app_footer.dart';
import 'package:ox0/core/common/widgets/mobile_app_bar.dart';
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
        ctaText: 'Let\'s Talk',
      ),
      appBar: MobileAppBar(
        size: size,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                    ),
                    child: HtmlWidget(postDetails.details),
                  ),
                ],
              ),
            ),
          ),
          const AppFooter()
        ],
      ),
    );
  }
}
