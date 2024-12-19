import 'package:flutter/material.dart';
import 'package:ox0/core/common/widgets/app_button.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';
import 'package:ox0/core/common/widgets/app_footer.dart';
import 'package:ox0/core/common/widgets/app_input.dart';
import 'package:ox0/core/common/widgets/icon_container.dart';
import 'package:ox0/core/common/widgets/mobile_app_bar.dart';
import 'package:ox0/core/common/widgets/my_drawer.dart';
import 'package:ox0/features/contact/presentation/widgets/contact_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';
import 'package:ox0/features/contact/data/models/contact_model.dart';
import 'package:ox0/features/contact/presentation/bloc/contact_bloc.dart';

class ContactTablet extends StatelessWidget {
  const ContactTablet({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController subjectController = TextEditingController();
    TextEditingController messageController = TextEditingController();

    final Size size = MediaQuery.sizeOf(context);
    return BlocConsumer<ContactBloc, ContactState>(
      listener: (context, state) {
        if (state is ContactSuccess) {
          nameController.clear();
          emailController.clear();
          subjectController.clear();
          messageController.clear();

          toastification.show(
            context: context,
            type: ToastificationType.success,
            style: ToastificationStyle.flat,
            title: const Text('Success'),
            description: const Text('Message sent successfully!'),
            autoCloseDuration: const Duration(seconds: 3),
          );
        } else if (state is ContactError) {
          toastification.show(
            context: context,
            type: ToastificationType.error,
            style: ToastificationStyle.flat,
            title: const Text('Error'),
            description: Text('Failed to send message: ${state.message}'),
            autoCloseDuration: const Duration(seconds: 3),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: MobileAppBar(size: size),
          drawer: const MyDrawer(ctaText: 'Let\'s Talk'),
          body: Column(
            children: [
              if (state is ContactLoading)
                const LinearProgressIndicator(
                  color: Color(0xff0A58CA),
                ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
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
                                      size: size,
                                      height: size.width * 0.06,
                                      width: size.width * 0.06,
                                      iconPath: 'assets/icons/ic_telegram.svg'),
                                  IconContainer(
                                      size: size,
                                      height: size.width * 0.06,
                                      width: size.width * 0.06,
                                      iconPath: 'assets/icons/ic_github.svg'),
                                  IconContainer(
                                      size: size,
                                      height: size.width * 0.06,
                                      width: size.width * 0.06,
                                      iconPath: 'assets/icons/ic_linkdin.svg'),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      AppContainer(
                        width: size.width * 0.45,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 20,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.03),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: size.width * 0.3,
                                    child: const Text.rich(
                                      maxLines: 1,
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
                                  ),
                                  Image.asset('assets/images/star.png')
                                ],
                              ),
                            ),
                            AppInput(
                              controller: nameController,
                              label: 'Name',
                              isRequired: true,
                            ),
                            AppInput(
                              controller: emailController,
                              label: 'Email',
                              isRequired: true,
                            ),
                            AppInput(
                              controller: subjectController,
                              label: 'Your Subject',
                              isRequired: true,
                            ),
                            AppInput(
                              controller: messageController,
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
                                onPressed: () {
                                  if (nameController.text.isEmpty ||
                                      emailController.text.isEmpty ||
                                      subjectController.text.isEmpty ||
                                      messageController.text.isEmpty) {
                                    toastification.show(
                                      context: context,
                                      type: ToastificationType.error,
                                      style: ToastificationStyle.flat,
                                      title: const Text('Error'),
                                      description:
                                          const Text('Please fill all required fields'),
                                      autoCloseDuration: const Duration(seconds: 3),
                                    );
                                    return;
                                  }

                                  final contact = ContactModel(
                                    name: nameController.text,
                                    email: emailController.text,
                                    subject: subjectController.text,
                                    message: messageController.text,
                                  );

                                  context
                                      .read<ContactBloc>()
                                      .add(SubmitContactForm(contact));
                                },
                                text: 'SEND MESSAGE',
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const AppFooter(),
            ],
          ),
        );
      },
    );
  }
}
