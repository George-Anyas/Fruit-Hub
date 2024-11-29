import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;

import 'package:fruit_app/core/utils/app_images.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';

import 'package:fruit_app/features/home/presentaion/views/widgets/featured_item_botton.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.sizeOf(context).width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: SizedBox(
        width: itemWidth,
        child: AspectRatio(
          aspectRatio: 342 / 158,
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: itemWidth * .2,
                  child: Image.asset(Assets.assetsImagesWaterMelon)),
              Container(
                width: itemWidth / 2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: svg.Svg(Assets.assetsImagesShapeFeaturedItem),
                      fit: BoxFit.fill),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 33.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'عروض العيد',
                        style:
                            TextStyles.regular13.copyWith(color: Colors.white),
                      ),
                      Spacer(),
                      Text(
                        'خصم 25%',
                        style: TextStyles.bold19.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      FeaturedItemBotton(onpressed: () {}),
                      SizedBox(
                        height: 29,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
