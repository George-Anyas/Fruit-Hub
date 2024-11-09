import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_images.dart';
import 'package:fruit_app/features/on_boarding/presentation/views/widgets/on_boarding_page_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(children: const [
      OnBoardingPageItem(
          image: Assets.assetsImagesOnBoardingImage1,
          backGroundImage: Assets.assetsImagesOnBoardingBackgroundImage1,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            children: [Text('مرحبًا بك في'), Text('Fruit'), Text('HUB')],
          ))
    ]);
  }
}
