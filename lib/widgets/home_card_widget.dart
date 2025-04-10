import 'package:flutter/material.dart';
import '../constants/colors.dart';

class HomeCartWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String rating;
  const HomeCartWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: AppColors.WhiteColor,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(imageUrl, height: 80, fit: BoxFit.contain),
            SizedBox(height: 8),
            Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(rating),
                Icon(Icons.star, color: Colors.amber, size: 12),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
