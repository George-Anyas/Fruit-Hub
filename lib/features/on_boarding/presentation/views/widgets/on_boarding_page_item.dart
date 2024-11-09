import 'package:flutter/material.dart';

class OnBoardingPageItem extends StatelessWidget {
  const OnBoardingPageItem(
      {super.key,
      required this.image,
      required this.backGroundImage,
      required this.subtitle,
      required this.title});
  final String image, backGroundImage;
  final String subtitle;
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
