import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/core/common/widgets/app_footer.dart';
import 'package:ox0/core/common/widgets/loading_widget.dart';
import 'package:ox0/core/common/widgets/mobile_app_bar.dart';
import 'package:ox0/core/common/widgets/my_drawer.dart';
import 'package:ox0/features/home/presentation/bloc/home_bloc.dart';
import 'package:ox0/features/home/presentation/widgets/animated_text.dart';
import 'package:ox0/features/home/presentation/widgets/item_card.dart';
import 'package:ox0/features/home/presentation/widgets/profile_card.dart';
import 'package:ox0/features/home/presentation/widgets/promo_sec.dart';
import 'package:ox0/features/home/presentation/widgets/service_sec.dart';
import 'package:ox0/features/home/presentation/widgets/social_sec.dart';
import 'package:ox0/features/home/presentation/widgets/stat_sec.dart';


class HomeMobile extends StatelessWidget {
  const HomeMobile({
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
        
      ),
      body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        if (state is HomeLoading) {
          return const LoadingWidget();
        } else if (state is HomeLoaded) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.02,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: size.height * 0.02,
                children: [
                  ProfileCard(
                    shortDes: 'A DEVELOPER',
                    name: 'Omid Haqi',
                    longDes: 'I AM A DEVELOPER AND SOFTWARE ENGINEER.',
                    profileUrl: 'assets/images/profile_placeholder.jpg',
                    size: size,
                    profileHeight: size.height * 0.21,
                    profileWidth: size.width * 0.35,
                    longDesWidth: size.width * 0.3,
                    nameWidth: size.width * 0.3,
                    shortDesWidth: size.width * 0.3,
                    bottomPadding: size.height * 0.03,
                  ),
                  AnimatedText(
                    size: size,
                    height: size.height * 0.04,
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
                          titleWidth: size.width * 0.2,
                          subTitleWidth: size.width * 0.2,
                          imageHeight: size.height * 0.2,
                          imageWidth: size.width * 0.4,
                          imageUrl: 'assets/images/signature.png',
                          title: 'MORE ABOUT ME',
                          subTitle: 'Credentials',
                        ),
                      ),
                      Expanded(
                        child: ItemCard(
                          size: size,
                          titleWidth: size.width * 0.2,
                          subTitleWidth: size.width * 0.2,
                          imageHeight: size.height * 0.2,
                          imageWidth: size.width * 0.4,
                          imageUrl: 'assets/images/works.png',
                          title: 'SHOWCASE',
                          subTitle: 'Projects',
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
                  ServiceSec(
                    size: size,
                    height: size.height * 0.2,
                    iconContainerHeight: size.width * 0.13,
                    iconContainerWidth: size.width * 0.13,
                    titleWidth: size.width * 0.3,
                    subTitleWidth: size.width * 0.2,
                  ),
                  StatSec(
                    size: size,
                    height: size.height * 0.23,
                    statCardHeight: size.height * 0.2,
                    statCardWidth: size.width * 0.25,
                    title1: '+4',
                    subTitle1: 'YEARS XP',
                    title2: '+20',
                    subTitle2: 'TOTAL PROJECTS',
                    title3: '+10',
                    subTitle3: 'CLIENTS WORLDWIDE',
                  ),
                  PromoSec(
                    size: size,
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
      }),
    );
  }
}
