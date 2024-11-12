import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/widgets/custom_button.dart';
import 'package:fruit_app/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: pageController, // Pass the instance here
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          position: currentPage * 1, // Ensure position is a double
          decorator: DotsDecorator(
            color: currentPage == 0
                ? AppColors.primaryColor.withOpacity(0.5)
                : AppColors.primaryColor,
            activeColor: AppColors.primaryColor,
          ),
        ),
        const SizedBox(height: 29),
        Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: currentPage == 1 ? true : false,
            child: CustomButton(text: 'ابدأ الان', onpressed: () {})),
        const SizedBox(height: 43),
      ],
    );
  }
}
