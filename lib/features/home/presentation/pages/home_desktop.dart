import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';

import 'package:ox0/core/common/widgets/desktop_app_bar.dart';
import 'package:ox0/core/common/widgets/loading_widget.dart';
import 'package:ox0/features/home/presentation/bloc/home_bloc.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return const LoadingWidget();
          } else if (state is HomeLoaded) {
            final size = MediaQuery.sizeOf(context);
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const DesktopAppBar(),
                Expanded(
                  child: Column(
                    spacing: size.height * 0.03,
                    children: [
                      Row(
                        spacing: size.width * 0.03,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppContiner(
                            width: size.width * 0.30,
                            // height: size.height * 0.3,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(size.width * 0.02),
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
                                      bottom: size.height * 0.1),
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
                                        child: const Text('OMID HAQI',
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis),
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
                                  child:  SvgPicture.asset(
                                          'assets/icons/arrow_to_right.svg',
                                          height: size.height * 0.05,
                                          width: size.width * 0.05,
                                        )
                                      ,
                                ),
                              ],
                            ),
                          ),
                          Column(
                            spacing: 20,
                            children: [
                              AppContiner(
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
                                  AppContiner(
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
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(
                                               
                                                    size.width * 0.001
                                                    
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: size.width * 0.062,
                                                    height:
                                                        size.height * 0.02,
                                                    child: Text(
                                                      'MORE ABOUT ME',
                                                      style: TextStyle(
                                                        color: Colors.white
                                                            .withValues(
                                                                alpha: 0.5),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: size.width * 0.062,
                                                    height:
                                                        size.height * 0.02,
                                                    child: const Text(
                                                      'Credentials',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(
                                                  size.width * 0.006),
                                              child: 
                                                  SvgPicture.asset(
                                                      'assets/icons/arrow_to_right.svg',
                                                      height:
                                                          size.height * 0.05,
                                                      width:
                                                          size.width * 0.05,
                                                    )
                                                 ,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  AppContiner(
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
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(
                                                  size.width * 0.001
                                                 ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: size.width * 0.062,
                                                    height:
                                                        size.height * 0.02,
                                                    child: Text(
                                                      'MORE ABOUT ME',
                                                      style: TextStyle(
                                                        color: Colors.white
                                                            .withValues(
                                                                alpha: 0.5),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: size.width * 0.062,
                                                    height:
                                                        size.height * 0.02,
                                                    child: const Text(
                                                      'Credentials',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(
                                                  size.width * 0.006),
                                              child: 
                                                  SvgPicture.asset(
                                                      'assets/icons/arrow_to_right.svg',
                                                      height:
                                                          size.height * 0.05,
                                                      width:
                                                          size.width * 0.05,
                                                    )
                                                  ,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppContiner(
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(
                                        
                                            size.width * 0.001
                                            ,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: size.width * 0.062,
                                            height: size.height * 0.02,
                                            child: Text(
                                              'MORE ABOUT ME',
                                              style: TextStyle(
                                                color: Colors.white
                                                    .withValues(alpha: 0.5),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: size.width * 0.062,
                                            height: size.height * 0.02,
                                            child: const Text(
                                              'Credentials',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.all(size.width * 0.006),
                                      child: 
                                         SvgPicture.asset(
                                              'assets/icons/arrow_to_right.svg',
                                              height: size.height * 0.05,
                                              width: size.width * 0.05,
                                            )
                                         ,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          AppContiner(
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
                                  spacing: size.width * 0.1,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(
                                        size.width * 0.001,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: size.width * 0.062,
                                            height: size.height * 0.02,
                                            child: Text(
                                              'MORE ABOUT ME',
                                              style: TextStyle(
                                                color: Colors.white
                                                    .withValues(alpha: 0.5),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: size.width * 0.062,
                                            height: size.height * 0.02,
                                            child: const Text(
                                              'Credentials',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.all(size.width * 0.006),
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
                          AppContiner(
                            height: size.height * 0.235,
                            width: size.width * 0.2,
                            padding: EdgeInsets.all(size.width * 0.001),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppContiner(
                                  margin: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: size.width * 0.05,
                                        height: size.width * 0.05,
                                        margin: EdgeInsets.all(
                                            size.width * 0.005),
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
                                        margin: EdgeInsets.all(
                                            size.width * 0.005),
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
                                          'assets/icons/mobile_dev.svg',
                                        ),
                                      ),
                                      Container(
                                        width: size.width * 0.05,
                                        height: size.width * 0.05,
                                        margin: EdgeInsets.all(
                                          size.width * 0.005,
                                        ),
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
                                          'assets/icons/union.svg',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: size.width * 0.07,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: size.width * 0.01),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: size.width * 0.062,
                                            height: size.height * 0.02,
                                            child: Text(
                                              'MORE ABOUT ME',
                                              style: TextStyle(
                                                color: Colors.white
                                                    .withValues(alpha: 0.5),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: size.width * 0.062,
                                            height: size.height * 0.02,
                                            child: const Text(
                                              'Credentials',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.all(size.width * 0.006),
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
                  ),
                ),
              ],
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
