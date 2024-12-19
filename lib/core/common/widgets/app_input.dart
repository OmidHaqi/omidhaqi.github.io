import 'package:flutter/material.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';

class AppInput extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final bool isRequired;
  final double? width;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;

  const AppInput({
    super.key,
    required this.label,
    this.controller,
    this.isRequired = false,
    this.width,
    this.keyboardType,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      borderWidth: 0.001,
      height: keyboardType == TextInputType.multiline ? 120 : 60,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
      borderRadius: 10,
      child: Center(
        child: TextField(
          controller: controller,
          onChanged: onChanged,
          keyboardType: keyboardType,
          maxLines: keyboardType == TextInputType.multiline ? null : 1,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            isDense: true,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: keyboardType == TextInputType.multiline
                ? const EdgeInsets.only(bottom: 50)
                : null,
            labelText: '$label${isRequired ? ' *' : ''}',
            labelStyle: const TextStyle(
              color: Color(0xBABCBCBC),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
