import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/widgets/custom_button.dart';
import 'package:fruit_app/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: OnBoardingPageView(),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
              color: AppColors.primaryColor.withOpacity(0.5),
              activeColor: AppColors.primaryColor),
        ),
        const SizedBox(
          height: 29,
        ),
        CustomButton(
          onpressed: () {},
        ),
        const SizedBox(
          height: 43,
        )
      ],
    );
  }
}
