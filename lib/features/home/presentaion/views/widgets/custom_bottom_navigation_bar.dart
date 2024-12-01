import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/core/utils/app_images.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: InActiveItem(image: Assets.assetsImagesPersonalActive),
        width: 375,
        height: 70,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 25,
              offset: Offset(0, -2),
              spreadRadius: 0,
            )
          ],
        ));
  }
}

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(image);
  }
}
