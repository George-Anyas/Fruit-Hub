import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_app/constants.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';

class FeaturedItemBotton extends StatelessWidget {
  const FeaturedItemBotton({super.key, required this.onpressed});
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onpressed;
      },
      child: Column(
        children: [
          Container(
            height: 34,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: FittedBox(
                child: Text(
                  'تسوق الان',
                  textAlign: TextAlign.center,
                  style: TextStyles.semiBold11.copyWith(color: kPrimaryColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
