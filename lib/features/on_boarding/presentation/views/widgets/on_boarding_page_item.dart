import 'package:flutter/material.dart';

import 'package:svg_flutter/svg.dart';

class OnBoardingPageItem extends StatelessWidget {
  const OnBoardingPageItem(
      {super.key,
      required this.image,
      required this.backGroundImage,
      required this.subtitle,
      required this.title,
      required this.isVisible});
  final String image, backGroundImage;
  final String subtitle;
  final Widget title;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  backGroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                  left: 0, right: 0, bottom: 0, child: SvgPicture.asset(image)),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Visibility(visible: isVisible, child: const Text('تخط')),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}