import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_images.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';
import 'package:fruit_app/features/on_boarding/presentation/views/widgets/on_boarding_page_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(controller: pageController, children: [
      OnBoardingPageItem(
        isVisible:
            (pageController.hasClients ? pageController.page!.round() : 0) == 0,
        image: Assets.assetsImagesOnBoardingImage1,
        backGroundImage: Assets.assetsImagesOnBoardingBackgroundImage1,
        subtitle:
            'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'مرحبًا بك في',
              style: TextStyles.bold23.copyWith(color: const Color(0xff0C0D0D)),
            ),
            Text(
              ' HUB',
              style:
                  TextStyles.bold23.copyWith(color: AppColors.secondaryColor),
            ),
            Text(
              'Fruit',
              style: TextStyles.bold23.copyWith(color: AppColors.primaryColor),
            ),
          ],
        ),
      ),
      OnBoardingPageItem(
        isVisible:
            (pageController.hasClients ? pageController.page!.round() : 0) != 1,
        image: Assets.assetsImagesOnBoardingImage2,
        backGroundImage: Assets.assetsImagesOnBoardingBackgroundImage2,
        subtitle:
            'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
        title: const Text(
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
