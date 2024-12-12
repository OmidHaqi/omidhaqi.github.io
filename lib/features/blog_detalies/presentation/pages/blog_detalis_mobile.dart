import 'package:blurbox/blurbox.dart';
import 'package:flutter/material.dart';
import 'package:ox0/core/common/widgets/app_button.dart';
import 'package:ox0/core/common/widgets/logo.dart';
import 'package:ox0/features/blog/data/models/blog_model.dart';

class BlogDetalisMobile extends StatelessWidget {
  final BlogModel postDetails;
  const BlogDetalisMobile({super.key, required this.postDetails});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      drawer: BlurBox(
        width: size.width * 0.6,
        height: double.infinity,
        color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
        blur: 20,
        child: const SizedBox.shrink(),
      ),
      appBar: AppBar(
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
              child: Text(postDetails.title),
            ),
          ),
        ],
      ),
    );
  }
}
