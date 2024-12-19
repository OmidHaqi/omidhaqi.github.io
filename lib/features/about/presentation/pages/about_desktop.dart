import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';
import 'package:ox0/core/common/widgets/app_footer.dart';
import 'package:ox0/core/common/widgets/desktop_app_bar.dart';
import 'package:ox0/core/common/widgets/loading_widget.dart';
import 'package:ox0/features/about/presentation/bloc/about_bloc.dart';
import 'package:ox0/features/about/presentation/widgets/about_item.dart';
import 'package:ox0/features/about/presentation/widgets/profile_pic.dart';
import 'package:ox0/features/about/presentation/widgets/summery.dart';
import 'package:ox0/features/home/presentation/widgets/item_card.dart';
import 'package:ox0/features/home/presentation/widgets/promo_sec.dart';
import 'package:ox0/features/home/presentation/widgets/social_sec.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: DesktopAppBar(size: size),
      body: BlocBuilder<AboutBloc, AboutState>(
        builder: (context, state) {
          if (state is AboutLoading) {
            return const LoadingWidget();
          } else if (state is AboutLoaded) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.01,
                  left: size.width * 0.17,
                  right: size.width * 0.17,
                  bottom: size.height * 0.02,
                ),
                child: Column(
                  spacing: size.height * 0.03,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProfilePic(
                          size: size,
                          height: size.height * 0.4,
                          width: size.width * 0.25,
                          imageUrl: 'assets/images/profile_placeholder.jpg',
                          padding: size.width * 0.01,
                          imageHeight: size.height * 0.23,
                          imageWidth: size.width * 0.1,
                          borderRadius: 20,
                        ),
                        Summery(
                          size: size,
                          containerWidth: size.width * 0.4,
                          titleFontSize: size.width * 0.04,
                          title: 'SELF-SUMMARY',
                          name: 'John Doe',
                          description:
                              'Lorem ipsum is typically a corrupted version of De finibus bonorum et malorum, a 1st-century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin. The first two words themselves are a truncation of dolorem ipsum ("pain itself").',
                        ),
                      ],
                    ),
                    Row(
                      spacing: size.height * 0.01,
                      children: [
                        Expanded(
                          child: AppContainer(
                            padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.02,
                              vertical: size.height * 0.02,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: size.height * 0.02,
                              children: const [
                                Text(
                                  'XP',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                AboutItem(
                                  duration: '2007 - 2017',
                                  title: 'Framer Designer & Developer',
                                  company: 'Bluebase Designs',
                                ),
                                AboutItem(
                                  duration: '2007 - 2017',
                                  title: 'Framer Designer & Developer',
                                  company: 'Bluebase Designs',
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: AppContainer(
                            padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.02,
                              vertical: size.height * 0.02,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: size.height * 0.02,
                              children: const [
                                Text(
                                  'EDU',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                AboutItem(
                                  duration: '2007 - 2017',
                                  title: 'Framer Designer & Developer',
                                  company: 'Bluebase Designs',
                                ),
                                AboutItem(
                                  duration: '2007 - 2017',
                                  title: 'Framer Designer & Developer',
                                  company: 'Bluebase Designs',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SocialSec(
                          size: size,
                          height: size.height * 0.235,
                          width: size.width * 0.2,
                        ),
                        PromoSec(
                          size: size,
                          width: size.width * 0.32,
                          height: size.height * 0.235,
                        ),
                        ItemCard(
                          size: size,
                          height: size.height * 0.235,
                          width: size.width * 0.13,
                          imageHeight: size.height * 0.15,
                          imageWidth: size.width * 0.1,
                          imageUrl: 'assets/images/signature.png',
                          title: 'MORE ABOUT ME',
                          subTitle: 'Credentials',
                        ),
                      ],
                    ),
                    const AppFooter()
                  ],
                ),
              ),
            );
          } else if (state is AboutError) {
            return Center(
              //TODO:impl error handling
              child: Text(state.errorMessage),
            );
          } else {
            return const Center(
              //TODO:impl error handling
              child: Text('somthing went wrong'),
            );
          }
        },
      ),
    );
  }
}
