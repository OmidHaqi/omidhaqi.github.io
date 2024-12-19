import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';
import 'package:ox0/core/common/widgets/app_footer.dart';
import 'package:ox0/core/common/widgets/loading_widget.dart';
import 'package:ox0/core/common/widgets/mobile_app_bar.dart';
import 'package:ox0/core/common/widgets/my_drawer.dart';
import 'package:ox0/features/about/presentation/bloc/about_bloc.dart';
import 'package:ox0/features/about/presentation/widgets/about_item.dart';
import 'package:ox0/features/about/presentation/widgets/profile_pic.dart';
import 'package:ox0/features/about/presentation/widgets/summery.dart';
import 'package:ox0/features/home/presentation/widgets/item_card.dart';
import 'package:ox0/features/home/presentation/widgets/promo_sec.dart';
import 'package:ox0/features/home/presentation/widgets/social_sec.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: MobileAppBar(size: size),
      drawer: const MyDrawer(
        ctaText: 'Let\'s Talk',
         
      ),
      body: BlocBuilder<AboutBloc, AboutState>(
        builder: (context, state) {
          if (state is AboutLoading) {
            return const LoadingWidget();
          } else if (state is AboutLoaded) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05,
                ),
                child: Column(
                  spacing: size.height * 0.03,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProfilePic(
                      size: size,
                      height: size.height * 0.4,
                      padding: size.width * 0.03,
                      imageUrl: 'assets/images/profile_placeholder.jpg',
                    ),
                    Summery(
                      size: size,
                      containerWidth: size.width * 0.9,
                      titleFontSize: size.width * 0.04,
                      title: 'SELF-SUMMARY',
                      name: 'John Doe',
                      description:
                          'Lorem ipsum is typically a corrupted version of De finibus bonorum et malorum, a 1st-century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin. The first two words themselves are a truncation of dolorem ipsum ("pain itself").',
                    ),
                    Row(
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
                      ],
                    ),
                    Row(
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
                    SocialSec(
                      size: size,
                      height: size.height * 0.25,
                      iconContainerHeight: size.width * 0.1,
                      iconContainerWidth: size.width * 0.1,
                      titleWidth: size.width * 0.3,
                      subTitleWidth: size.width * 0.2,
                    ),
                    ItemCard(
                      size: size,
                      titleWidth: size.width * 0.3,
                      subTitleWidth: size.width * 0.2,
                      imageHeight: size.height * 0.2,
                      imageWidth: size.width * 0.4,
                      imageUrl: 'assets/images/gfonts.png',
                      title: 'BLOG',
                      subTitle: 'GFonts',
                    ),
                    PromoSec(
                      size: size,
                      height: size.height * 0.235,
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
