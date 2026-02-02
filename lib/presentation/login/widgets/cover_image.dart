import 'package:flutter/material.dart';

class CoverImage extends StatelessWidget {
  const CoverImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        'assets/images/intro.png',
        fit: BoxFit.cover,
        height: double.infinity,
      ),
    );
  }
}
