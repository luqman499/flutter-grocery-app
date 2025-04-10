import 'package:flutter/material.dart';
import '../constants/colors.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: AppColors.Whi,
        borderRadius: BorderRadius.circular(9),
      ),
    );
  }
}
