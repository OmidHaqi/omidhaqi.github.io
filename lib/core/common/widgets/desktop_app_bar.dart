import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/core/common/blocs/desktop_nav_bar_route_cubit/desktop_nav_bar_route_cubit.dart';
import 'package:ox0/core/common/widgets/app_button.dart';
import 'package:ox0/core/common/widgets/logo.dart';
import 'package:ox0/core/config/app_theme.dart';
import 'package:ox0/features/about/presentation/pages/about_screen.dart';
import 'package:ox0/features/contact/presentation/pages/contact_screen.dart';
import 'package:ox0/features/home/presentation/pages/home_screen.dart';
import 'package:ox0/features/works/presentation/pages/works_screen.dart';

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Logo(),
          const _NavigationButtons(),
          AppButton(
            //TODO: Implement onPressed
            onPressed: () {},
            text: 'Let\'s Talk',
          ),
        ],
      ),
    );
  }
}

class _NavigationButtons extends StatelessWidget {
  const _NavigationButtons();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        _NavButton(title: 'Home', route: HomeScreen.routeName),
        _NavButton(title: 'About', route: AboutScreen.routeName),
        _NavButton(title: 'Works', route: WorksScreen.routeName),
        _NavButton(title: 'Contact', route: ContactScreen.routeName),
      ],
    );
  }
}

class _NavButton extends StatelessWidget {
  final String title;
  final String route;

  const _NavButton({
    required this.title,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DesktopNavBarRouteCubit, Map<String, String>>(
      builder: (context, state) {
        final isActive = state['currentRoute'] == route;
        final isHovered = state['hoveredButton'] == route;

        return MouseRegion(
          onEnter: (_) => context
              .read<DesktopNavBarRouteCubit>()
              .updateHoveredButton(route),
          onExit: (_) =>
              context.read<DesktopNavBarRouteCubit>().updateHoveredButton(''),
          child: GestureDetector(
            onTap: () {
              if (!isActive) {
                context.read<DesktopNavBarRouteCubit>().updateRoute(route);
                Navigator.pushNamed(context, route);
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                title,
                style: isActive
                    ? AppTheme.navButtonActive
                    : isHovered
                        ? AppTheme.navButtonActive.copyWith(
                            color: AppTheme.activeTextColor.withOpacity(0.8),
                            fontWeight: FontWeight.normal
                          )
                        : AppTheme.navButtonInactive,
              ),
            ),
          ),
        );
      },
    );
  }
}
