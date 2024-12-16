import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/core/common/widgets/app_footer.dart';

import 'package:ox0/core/common/widgets/desktop_app_bar.dart';

import 'package:ox0/core/common/widgets/loading_widget.dart';
import 'package:ox0/features/home/presentation/bloc/home_bloc.dart';
import 'package:ox0/features/home/presentation/widgets/animated_text.dart';
import 'package:ox0/features/home/presentation/widgets/item_card.dart';
import 'package:ox0/features/home/presentation/widgets/profile_card.dart';
import 'package:ox0/features/home/presentation/widgets/promo_sec.dart';
import 'package:ox0/features/home/presentation/widgets/service_sec.dart';
import 'package:ox0/features/home/presentation/widgets/social_sec.dart';
import 'package:ox0/features/home/presentation/widgets/stat_sec.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: DesktopAppBar(
        size: size,
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return const LoadingWidget();
          } else if (state is HomeLoaded) {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                      left: size.width * 0.17,
                      right: size.width * 0.17,
                      bottom: size.height * 0.02,
                    ),
                    child: Column(
                      spacing: size.height * 0.03,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProfileCard(
                              shortDes: 'A DEVELOPER',
                              name: ' Omid Haqi',
                              longDes:
                                  'I AM A DEVELOPER AND SOFTWARE ENGINEER.',
                              profileUrl:
                                  'assets/images/profile_placeholder.jpg',
                              size: size,
                              profileHeight: size.height * 0.23,
                              profileWidth: size.width * 0.1,
                              width: size.width * 0.35,
                            ),
                            Column(
                              spacing: 20,
                              children: [
                                AnimatedText(
                                  size: size,
                                  text:
                                      'LATEST WORK AND FEATURED . LATEST WORK AND FEATURED . ',
                                  width: size.width * 0.28,
                                ),
                                Row(
                                  spacing: size.width * 0.02,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
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
                                    ItemCard(
                                      size: size,
                                      height: size.height * 0.235,
                                      width: size.width * 0.13,
                                      imageHeight: size.height * 0.15,
                                      imageWidth: size.width * 0.1,
                                      imageUrl: 'assets/images/works.png',
                                      title: 'SHOWCASE',
                                      subTitle: 'Projects',
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          spacing: size.width * 0.01,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ItemCard(
                              size: size,
                              height: size.height * 0.235,
                              width: size.width * 0.13,
                              imageHeight: size.height * 0.15,
                              imageWidth: size.width * 0.1,
                              imageUrl: 'assets/images/gfonts.png',
                              title: 'BLOG',
                              subTitle: 'GFonts',
                            ),
                            ServiceSec(
                              size: size,
                              width: size.width * 0.29,
                              height: size.height * 0.235,
                            ),
                            SocialSec(
                              size: size,
                              height: size.height * 0.235,
                              width: size.width * 0.2,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            StatSec(
                              size: size,
                              width: size.width * 0.32,
                              height: size.height * 0.235,
                              title1: '+4',
                              subTitle1: 'YEARS XP',
                              title2: '+20',
                              subTitle2: 'TOTAL PROJECTS',
                              title3: '+10',
                              subTitle3: 'CLIENTS WORLDWIDE',
                            ),
                            PromoSec(
                              size: size,
                              width: size.width * 0.32,
                              height: size.height * 0.235,
                            ),
                          ],
                        ),
                        const AppFooter()
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else if (state is HomeError) {
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
