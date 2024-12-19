import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:ox0/core/common/widgets/app_footer.dart';
import 'package:ox0/core/common/widgets/desktop_app_bar.dart';
import 'package:ox0/features/works/data/models/works_model.dart';

class WorksDetalisDesktop extends StatelessWidget {
  final WorksModel postDetails;
  const WorksDetalisDesktop({
    super.key,
    required this.postDetails,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: DesktopAppBar(
        size: size,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.01,
                  left: size.width * 0.17,
                  right: size.width * 0.17,
                  bottom: size.height * 0.02,
                ),
                child: HtmlWidget(postDetails.details),
              ),
            ),
          ),
          const AppFooter(),
        ],
      ),
    );
  }
}
