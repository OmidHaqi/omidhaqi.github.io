import 'package:flutter/material.dart';
import 'package:ox0/core/common/widgets/app_button.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';
import 'package:ox0/core/common/widgets/app_footer.dart';
import 'package:ox0/core/common/widgets/app_input.dart';
import 'package:ox0/core/common/widgets/icon_container.dart';
import 'package:ox0/core/common/widgets/mobile_app_bar.dart';
import 'package:ox0/core/common/widgets/my_drawer.dart';
import 'package:ox0/features/contact/presentation/widgets/contact_item.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: MobileAppBar(size: size),
      drawer: MyDrawer(
        ctaText: 'Let\'s Talk',
        onPressedCTA: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.02,
                vertical:  size.width * 0.02,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 50,
                children: [
                  const Column(
                    spacing: 30,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CONTACT INFO',
                        style: TextStyle(fontSize: 18),
                      ),
                      ContactItem(
                        iconPath: 'assets/icons/ic_email.svg',
                        subTitle1: 'support@ox0.ir',
                        subTitle: 'info@ox0.ir',
                        title: 'MAIL US',
                      ),
                      ContactItem(
                        iconPath: 'assets/icons/ic_phone.svg',
                        subTitle1: '+98 910 009 0780',
                        subTitle: '+98 939 954 3446',
                        title: 'CONTACT US',
                      ),
                      ContactItem(
                        iconPath: 'assets/icons/ic_location.svg',
                        subTitle1: 'Zanjan Province,',
                        subTitle: 'Iran,',
                        title: 'LOCATION',
                      ),
                    ],
                  ),
                  Column(
                    spacing: 30,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'CONTACT INFO',
                      ),
                      Row(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconContainer(
                              padding: const EdgeInsets.all(20),
                              size: size,
                              height: size.width * 0.15,
                              width: size.width * 0.15,
                              iconPath: 'assets/icons/ic_telegram.svg'),
                          IconContainer(
                              padding: const EdgeInsets.all(20),
                              size: size,
                              height: size.width * 0.15,
                              width: size.width * 0.15,
                              iconPath: 'assets/icons/ic_github.svg'),
                          IconContainer(
                              padding: const EdgeInsets.all(20),
                              size: size,
                              height: size.width * 0.15,
                              width: size.width * 0.15,
                              iconPath: 'assets/icons/ic_linkdin.svg'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            AppContainer(
              margin: EdgeInsets.symmetric(horizontal:  size.width * 0.02,vertical:  size.width * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Let\'t Works ',
                                  style: TextStyle(fontSize: 28)),
                              TextSpan(
                                text: 'together',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Color(0xff0A58CA),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Image.asset('assets/images/star.png')
                      ],
                    ),
                  ),
                  const AppInput(
                    label: 'Name',
                    isRequired: true,
                  ),
                  const AppInput(
                    label: 'Email',
                    isRequired: true,
                  ),
                  const AppInput(
                    label: 'Your Subject',
                    isRequired: true,
                  ),
                  const AppInput(
                    label: 'Your Message',
                    keyboardType: TextInputType.multiline,
                    isRequired: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 30,
                      left: 35,
                    ),
                    child: AppButton(
                      onPressed: () {},
                      text: 'SEND MESSAGE',
                    ),
                  ),
                ],
              ),
            ),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}
