import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:ox0/core/common/widgets/app_footer.dart';
import 'package:ox0/core/common/widgets/mobile_app_bar.dart';
import 'package:ox0/core/common/widgets/my_drawer.dart';
import 'package:ox0/features/works/data/models/works_model.dart';

class WorksDetalisMobile extends StatelessWidget {
  final WorksModel postDetails;
  const WorksDetalisMobile({super.key, required this.postDetails});

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
