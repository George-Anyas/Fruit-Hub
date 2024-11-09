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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('مرحبًا بك في'), Text('Fruit'), Text('HUB')],
        ),
      ),
      OnBoardingPageItem(
        image: Assets.assetsImagesOnBoardingImage2,
        backGroundImage: Assets.assetsImagesOnBoardingBackgroundImage2,
        subtitle:
            'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
        title: Text(
          'ابحث وتسوق',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF0C0D0D),
            fontSize: 23,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
      )
    ]);
  }
}
