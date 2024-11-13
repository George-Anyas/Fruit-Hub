import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/constants.dart';
import 'package:fruit_app/core/utils/app_images.dart';

class CustomCheckBooks extends StatelessWidget {
  const CustomCheckBooks(
      {super.key, required this.isChecked, required this.onChecked});
  final bool isChecked;
  final ValueChanged<bool> onChecked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: const Duration(milliseconds: 100),
        decoration: ShapeDecoration(
          color: isChecked ? kPrimaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1.50,
                color:
                    isChecked ? Colors.transparent : const Color(0xFFDCDEDE)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: isChecked
            ? Padding(
                padding: const EdgeInsets.all(1.5),
                child: SvgPicture.asset(Assets.assetsImagesCheck),
              )
            : SizedBox(),
      ),
    );
  }
}
