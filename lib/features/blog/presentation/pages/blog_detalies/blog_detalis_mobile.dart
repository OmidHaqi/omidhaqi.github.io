import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:ox0/core/common/widgets/app_button.dart';
import 'package:ox0/core/common/widgets/app_footer.dart';
import 'package:ox0/core/common/widgets/logo.dart';
import 'package:ox0/core/common/widgets/my_drawer.dart';
import 'package:ox0/features/blog/data/models/blog_model.dart';

class BlogDetalisMobile extends StatelessWidget {
  final BlogModel postDetails;
  const BlogDetalisMobile({super.key, required this.postDetails});

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05,
              ),
              child: HtmlWidget(postDetails.details),
            ),
            const AppFooter()
          ],
        ),
      ),
    );
  }
}
