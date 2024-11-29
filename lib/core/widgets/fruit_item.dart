import 'package:flutter/material.dart';
import 'package:fruit_app/constants.dart';

import 'package:fruit_app/core/utils/app_images.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 170,
      decoration: ShapeDecoration(
        color: Color(0xFFF3F5F7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Icon(
              Icons.favorite_border_outlined,
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset(Assets.assetsImagesWaterMelon),
                SizedBox(
                  height: 24,
                ),
                ListTile(
                  title: Text(
                    'بطيخ',
                    textAlign: TextAlign.right,
                    style: TextStyles.semiBold16.copyWith(color: Colors.black),
                  ),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '20جنية ',
                          style: TextStyles.bold13.copyWith(
                            color: Color(0xFFF4A91F),
                          ),
                        ),
                        TextSpan(
                          text: '/',
                          style: TextStyles.bold13.copyWith(
                            color: Color(0xFFF8C76D),
                          ),
                        ),
                        TextSpan(
                          text: ' الكيلو',
                          style: TextStyles.semiBold13.copyWith(
                            color: Color(0xFFF8C76D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: kPrimaryColor,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
