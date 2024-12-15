import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';
import 'package:ox0/core/common/widgets/app_footer.dart';

import 'package:ox0/core/common/widgets/desktop_app_bar.dart';
import 'package:ox0/core/common/widgets/loading_widget.dart';
import 'package:ox0/features/home/presentation/bloc/home_bloc.dart';

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
                    child: SingleChildScrollView(
                      child: Column(
                        spacing: size.height * 0.03,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppContainer(
                                width: size.width * 0.35,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.all(size.width * 0.02),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'assets/images/profile_placeholder.jpg',
                                          fit: BoxFit.cover,
                                          height: size.height * 0.23,
                                          width: size.width * 0.1,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        bottom: size.height * 0.1,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        spacing: 10,
                                        children: [
                                          SizedBox(
                                            width: size.width * 0.1,
                                            child: Text(
                                              'A DEVELOPER',
                                              style: TextStyle(
                                                color: Colors.white
                                                    .withValues(alpha: 0.5),
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          SizedBox(
                                            width: size.width * 0.1,
                                            child: const Text(
                                              'OMID HAQI',
                                              style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          SizedBox(
                                            width: size.width * 0.1,
                                            child: Text(
                                              'I AM A DEVELOPER AND SOFTWARE ENGINEER.',
                                              style: TextStyle(
                                                color: Colors.white
                                                    .withValues(alpha: 0.5),
                                              ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: size.width * 0.015,
                                        bottom: size.width * 0.02,
                                      ),
                                      child: SvgPicture.asset(
                                        'assets/icons/arrow_to_right.svg',
                                        height: size.height * 0.05,
                                        width: size.width * 0.05,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                spacing: 20,
                                children: [
                                  AppContainer(
                                    width: size.width * 0.28,
                                    padding: EdgeInsets.all(size.width * 0.01),
                                    child: const Text(
                                      'LATEST WORK AND FEATURED . LATEST WORK AND FEATURED . LATEST WORK AND FEATURED . LATEST WORK AND FEATURED . LATEST WORK AND FEATURED . LATEST WORK AND FEATURED .',
                                      maxLines: 1,
                                    ),
                                  ),
                                  Row(
                                    spacing: size.width * 0.02,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AppContainer(
                                        height: size.height * 0.235,
                                        width: size.width * 0.13,
                                        padding:
                                            EdgeInsets.all(size.width * 0.001),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                              'assets/images/signature.png',
                                              height: size.height * 0.15,
                                              width: size.width * 0.1,
                                              fit: BoxFit.cover,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        size.width * 0.0095,
                                                    vertical:
                                                        size.width * 0.001,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            size.width * 0.062,
                                                        height:
                                                            size.height * 0.03,
                                                        child: Text(
                                                          'MORE ABOUT ME',
                                                          maxLines: 1,
                                                          style: TextStyle(
                                                            color: Colors.white
                                                                .withValues(
                                                                    alpha: 0.5),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            size.width * 0.062,
                                                        height:
                                                            size.height * 0.03,
                                                        child: const Text(
                                                          'Credentials',
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(
                                                      size.width * 0.006),
                                                  child: SvgPicture.asset(
                                                    'assets/icons/arrow_to_right.svg',
                                                    height: size.height * 0.05,
                                                    width: size.width * 0.05,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      AppContainer(
                                        height: size.height * 0.235,
                                        width: size.width * 0.13,
                                        padding:
                                            EdgeInsets.all(size.width * 0.001),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                              'assets/images/works.png',
                                              height: size.height * 0.15,
                                              width: size.width * 0.1,
                                              fit: BoxFit.contain,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        size.width * 0.0095,
                                                    vertical:
                                                        size.width * 0.001,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            size.width * 0.062,
                                                        height:
                                                            size.height * 0.03,
                                                        child: Text(
                                                          'SHOWCASE',
                                                          maxLines: 1,
                                                          style: TextStyle(
                                                            color: Colors.white
                                                                .withValues(
                                                                    alpha: 0.5),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            size.width * 0.062,
                                                        height:
                                                            size.height * 0.03,
                                                        child: const Text(
                                                          'Projects',
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(
                                                      size.width * 0.006),
                                                  child: SvgPicture.asset(
                                                    'assets/icons/arrow_to_right.svg',
                                                    height: size.height * 0.05,
                                                    width: size.width * 0.05,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
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
                              AppContainer(
                                height: size.height * 0.235,
                                width: size.width * 0.13,
                                padding: EdgeInsets.all(size.width * 0.001),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/images/gfonts.png',
                                      height: size.height * 0.15,
                                      width: size.width * 0.1,
                                      fit: BoxFit.cover,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.0095,
                                            vertical: size.width * 0.001,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: size.width * 0.062,
                                                height: size.height * 0.03,
                                                child: Text(
                                                  'BLOG',
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                    color: Colors.white
                                                        .withValues(alpha: 0.5),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: size.width * 0.062,
                                                height: size.height * 0.03,
                                                child: const Text(
                                                  'GFonts',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(
                                              size.width * 0.006),
                                          child: SvgPicture.asset(
                                            'assets/icons/arrow_to_right.svg',
                                            height: size.height * 0.05,
                                            width: size.width * 0.05,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              AppContainer(
                                width: size.width * 0.29,
                                height: size.height * 0.235,
                                padding: EdgeInsets.all(size.width * 0.001),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: size.width * 0.05,
                                          height: size.width * 0.05,
                                          margin:
                                              EdgeInsets.all(size.width * 0.01),
                                          padding:
                                              EdgeInsets.all(size.width * 0.01),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFF2A2A2A),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                color: Colors.white
                                                    .withValues(alpha: 0.1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          child: SvgPicture.asset(
                                              'assets/icons/mobile_dev.svg'),
                                        ),
                                        Container(
                                          width: size.width * 0.05,
                                          height: size.width * 0.05,
                                          margin:
                                              EdgeInsets.all(size.width * 0.01),
                                          padding:
                                              EdgeInsets.all(size.width * 0.01),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFF2A2A2A),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                color: Colors.white
                                                    .withValues(alpha: 0.1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          child: SvgPicture.asset(
                                              'assets/icons/union.svg'),
                                        ),
                                        Container(
                                          width: size.width * 0.05,
                                          height: size.width * 0.05,
                                          margin:
                                              EdgeInsets.all(size.width * 0.01),
                                          padding:
                                              EdgeInsets.all(size.width * 0.01),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFF2A2A2A),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                color: Colors.white
                                                    .withValues(alpha: 0.1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          child: SvgPicture.asset(
                                              'assets/icons/pen.svg'),
                                        ),
                                        Container(
                                          width: size.width * 0.05,
                                          height: size.width * 0.05,
                                          margin:
                                              EdgeInsets.all(size.width * 0.01),
                                          padding:
                                              EdgeInsets.all(size.width * 0.01),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFF2A2A2A),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                color: Colors.white
                                                    .withValues(alpha: 0.1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          child: SvgPicture.asset(
                                            'assets/icons/camera.svg',
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.01,
                                            vertical: size.width * 0.002,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: size.width * 0.09,
                                                height: size.height * 0.03,
                                                child: Text(
                                                  'SPECIALIZATION',
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                    color: Colors.white
                                                        .withValues(alpha: 0.5),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: size.width * 0.062,
                                                height: size.height * 0.03,
                                                child: const Text(
                                                  'Services Offering',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: size.width * 0.006),
                                          child: SvgPicture.asset(
                                            'assets/icons/arrow_to_right.svg',
                                            height: size.height * 0.05,
                                            width: size.width * 0.05,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              AppContainer(
                                height: size.height * 0.235,
                                width: size.width * 0.2,
                                padding: EdgeInsets.all(size.width * 0.001),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    AppContainer(
                                      margin: const EdgeInsets.all(10),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: size.width * 0.05,
                                            height: size.width * 0.05,
                                            margin: EdgeInsets.all(
                                                size.width * 0.005),
                                            padding: EdgeInsets.all(
                                                size.width * 0.01),
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFF2A2A2A),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  width: 1,
                                                  color: Colors.white
                                                      .withValues(alpha: 0.1),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                            ),
                                            child: SvgPicture.asset(
                                                'assets/icons/ic_telegram.svg'),
                                          ),
                                          Container(
                                            width: size.width * 0.05,
                                            height: size.width * 0.05,
                                            margin: EdgeInsets.all(
                                                size.width * 0.005),
                                            padding: EdgeInsets.all(
                                                size.width * 0.01),
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFF2A2A2A),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  width: 1,
                                                  color: Colors.white
                                                      .withValues(alpha: 0.1),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                            ),
                                            child: SvgPicture.asset(
                                              'assets/icons/ic_linkdin.svg',
                                            ),
                                          ),
                                          Container(
                                            width: size.width * 0.05,
                                            height: size.width * 0.05,
                                            margin: EdgeInsets.all(
                                              size.width * 0.005,
                                            ),
                                            padding: EdgeInsets.all(
                                                size.width * 0.01),
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFF2A2A2A),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  width: 1,
                                                  color: Colors.white
                                                      .withValues(alpha: 0.1),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                            ),
                                            child: SvgPicture.asset(
                                              'assets/icons/ic_github.svg',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: size.width * 0.01,
                                              vertical: size.width * 0.001),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: size.width * 0.062,
                                                height: size.height * 0.03,
                                                child: Text(
                                                  'STAY WITH ME',
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                    color: Colors.white
                                                        .withValues(alpha: 0.5),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: size.width * 0.062,
                                                height: size.height * 0.03,
                                                child: const Text(
                                                  'Profiles',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: size.width * 0.006),
                                          child: SvgPicture.asset(
                                            'assets/icons/arrow_to_right.svg',
                                            height: size.height * 0.05,
                                            width: size.width * 0.05,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppContainer(
                                width: size.width * 0.32,
                                height: size.height * 0.235,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    AppContainer(
                                      width: size.width * 0.07,
                                      height: size.width * 0.09,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        spacing: 8,
                                        children: [
                                          Text(
                                            '4',
                                            style: TextStyle(
                                              fontSize: 28,
                                              color: Colors.white
                                                  .withValues(alpha: 0.5),
                                            ),
                                          ),
                                          const Text(
                                            'YEARS XP',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                          )
                                        ],
                                      ),
                                    ),
                                    AppContainer(
                                      width: size.width * 0.07,
                                      height: size.width * 0.09,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        spacing: 8,
                                        children: [
                                          Text(
                                            '+10',
                                            style: TextStyle(
                                              fontSize: 28,
                                              color: Colors.white
                                                  .withValues(alpha: 0.5),
                                            ),
                                          ),
                                          const Text(
                                            'CLIENTS WORLDWIDE',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                          ),
                                        ],
                                      ),
                                    ),
                                    AppContainer(
                                      width: size.width * 0.07,
                                      height: size.width * 0.09,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        spacing: 8,
                                        children: [
                                          Text(
                                            '+30',
                                            style: TextStyle(
                                              fontSize: 28,
                                              color: Colors.white
                                                  .withValues(alpha: 0.5),
                                            ),
                                          ),
                                          const Text(
                                            'TOTAL PROJECTS',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              AppContainer(
                                width: size.width * 0.32,
                                height: size.height * 0.235,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: size.width * 0.01),
                                          child: Image.asset(
                                              'assets/images/star.png'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: size.width * 0.01),
                                          child: const Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Let\'t',
                                                  style:
                                                      TextStyle(fontSize: 28),
                                                ),
                                                Text.rich(
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                          text: 'Works ',
                                                          style: TextStyle(
                                                              fontSize: 28)),
                                                      TextSpan(
                                                        text: 'together',
                                                        style: TextStyle(
                                                            fontSize: 28,
                                                            color: Color(
                                                                0xff0A58CA),
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ]),
                                        ),
                                        const SizedBox(height: 10)
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.all(size.width * 0.01),
                                      child: SvgPicture.asset(
                                        'assets/icons/arrow_to_right.svg',
                                        height: size.height * 0.05,
                                        width: size.width * 0.05,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const AppFooter()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else if (state is HomeError) {
            return Center(
              child: Text(state.errorMessage),
            );
          } else {
            return const Center(
              child: Text('somthing went wrong'),
            );
          }
        },
      ),
    );
  }
}
