import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/hover/hover_bloc.dart';

class ArrowBTN extends StatelessWidget {
  final String id;
  
  const ArrowBTN({
    super.key,
    required this.size,
    required this.id,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HoverBloc, HoverState>(
      builder: (context, state) {
        return MouseRegion(
          onEnter: (event) {
            context.read<HoverBloc>().add(HoverEntered(id));
          },
          onExit: (event) {
            context.read<HoverBloc>().add(HoverExited(id));
          },
          child: SvgPicture.asset(
            'assets/icons/arrow_to_right.svg',
            height: size.height * 0.05,
            width: size.width * 0.05,
            colorFilter: ColorFilter.mode(
              state.activeButtons.contains(id) ? Colors.white : Colors.grey,
              BlendMode.srcIn,
            ),
          ),
        );
      },
    );
  }
}
