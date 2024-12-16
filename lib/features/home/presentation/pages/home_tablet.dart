import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/core/common/widgets/app_footer.dart';
import 'package:ox0/core/common/widgets/loading_widget.dart';
import 'package:ox0/core/common/widgets/mobile_app_bar.dart';
import 'package:ox0/core/common/widgets/my_drawer.dart';
import 'package:ox0/core/common/widgets/my_drawer_item.dart';
import 'package:ox0/features/home/presentation/bloc/home_bloc.dart';
import 'package:ox0/features/home/presentation/widgets/animated_text.dart';
import 'package:ox0/features/home/presentation/widgets/item_card.dart';
import 'package:ox0/features/home/presentation/widgets/profile_card.dart';
import 'package:ox0/features/home/presentation/widgets/promo_sec.dart';
import 'package:ox0/features/home/presentation/widgets/service_sec.dart';
import 'package:ox0/features/home/presentation/widgets/social_sec.dart';
import 'package:ox0/features/home/presentation/widgets/stat_sec.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: MobileAppBar(
        size: size,
      ),
      drawer: MyDrawer(
        ctaText: 'Let\'s Talk',
        onPressedCTA: () {},
        children: [
          MyDrawerItem(
            title: 'Home',
            onTap: () {},
          ),
          MyDrawerItem(
            title: 'About',
            onTap: () {},
          ),
          MyDrawerItem(
            title: 'Works',
            onTap: () {},
          ),
          MyDrawerItem(
            title: 'Blogs',
            onTap: () {},
          ),
          MyDrawerItem(
            title: 'Contact',
            onTap: () {},
          ),
        ],
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return const LoadingWidget();
          } else if (state is HomeLoaded) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05,
                ),
                child: Column(
                  spacing: size.height * 0.03,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProfileCard(
                      shortDes: 'A DEVELOPER',
                      name: 'Omid Haqi',
                      longDes: 'I AM A DEVELOPER AND SOFTWARE ENGINEER.',
                      profileUrl: 'assets/images/profile_placeholder.jpg',
                      size: size,
                      profileHeight: size.height * 0.23,
                      profileWidth: size.width * 0.2,
                      longDesWidth: size.width * 0.2,
                      nameWidth: size.width * 0.2,
                      shortDesWidth: size.width * 0.2,
                      bottomPadding: size.height * 0.07,
                    ),
                    AnimatedText(
                      size: size,
                      text:
                          'LATEST WORK AND FEATURED . LATEST WORK AND FEATURED . LATEST WORK AND FEATURED . LATEST WORK AND FEATURED . LATEST WORK AND FEATURED . LATEST WORK AND FEATURED . ',
                    ),
                    Row(
                      spacing: size.width * 0.02,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ItemCard(
                            size: size,
                            titleWidth: size.width * 0.15,
                            subTitleWidth: size.width * 0.15,
                            imageHeight: size.height * 0.2,
                            imageWidth: size.width * 0.3,
                            imageUrl: 'assets/images/signature.png',
                            title: 'MORE ABOUT ME',
                            subTitle: 'Credentials',
                          ),
                        ),
                        Expanded(
                          child: ItemCard(
                            size: size,
                            titleWidth: size.width * 0.15,
                            subTitleWidth: size.width * 0.15,
                            imageHeight: size.height * 0.2,
                            imageWidth: size.width * 0.3,
                            imageUrl: 'assets/images/works.png',
                            title: 'SHOWCASE',
                            subTitle: 'Projects',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      spacing: size.width * 0.02,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ItemCard(
                            size: size,
                            titleWidth: size.width * 0.15,
                            subTitleWidth: size.width * 0.15,
                            imageHeight: size.height * 0.2,
                            imageWidth: size.width * 0.3,
                            imageUrl: 'assets/images/gfonts.png',
                            title: 'BLOG',
                            subTitle: 'GFonts',
                          ),
                        ),
                        Expanded(
                          child: SocialSec(
                            size: size,
                            height: size.height * 0.27,
                            iconContainerHeight: size.width * 0.06,
                            iconContainerWidth: size.width * 0.06,
                            titleWidth: size.width * 0.15,
                            subTitleWidth: size.width * 0.15,
                          ),
                        )
                      ],
                    ),
                    ServiceSec(
                      size: size,
                      height: size.height * 0.27,
                      iconContainerHeight: size.width * 0.1,
                      iconContainerWidth: size.width * 0.1,
                      titleWidth: size.width * 0.15,
                      subTitleWidth: size.width * 0.15,
                    ),
                    StatSec(
                      size: size,
                      height: size.height * 0.27,
                      statCardHeight: size.height * 0.2,
                      statCardWidth: size.width * 0.17,
                      title1: '+4',
                      subTitle1: 'YEARS XP',
                      title2: '+20',
                      subTitle2: 'TOTAL PROJECTS',
                      title3: '+10',
                      subTitle3: 'CLIENTS WORLDWIDE',
                    ),
                    PromoSec(
                      size: size,
                      height: size.height * 0.27,
                    ),
                    const AppFooter()
                  ],
                ),
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
