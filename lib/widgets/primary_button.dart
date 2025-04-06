import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() ontap;
  const PrimaryButton({
    super.key,
    required this.title,
    required this.icon,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
