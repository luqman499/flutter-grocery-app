import 'package:flutter/material.dart';
import '../constants/colors.dart';

class HomeCardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String rating;

  const HomeCardWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            Image.network(
              imageUrl,
              height: 80,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return Icon(Icons.broken_image, size: 80);
              },
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(child: CircularProgressIndicator());
              },
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(rating),
                SizedBox(width: 4),
                Icon(Icons.star, color: Colors.amber, size: 12),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//work to understand
