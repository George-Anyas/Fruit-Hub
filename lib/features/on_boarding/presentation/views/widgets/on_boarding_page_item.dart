import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/constants.dart';
import 'package:fruit_app/core/services/shared_prefrences.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';
import 'package:fruit_app/features/auth/presentation/views/login_view.dart';

class OnBoardingPageItem extends StatelessWidget {
  const OnBoardingPageItem(
      {super.key,
      required this.image,
      required this.backGroundImage,
      required this.subtitle,
      required this.title,
      required this.isVisible});
  final String image, backGroundImage;
  final String subtitle;
  final Widget title;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  backGroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                  left: 0, right: 0, bottom: 0, child: SvgPicture.asset(image)),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Visibility(
                  visible: isVisible,
                  child: GestureDetector(
                    onTap: () {
                      Prefs.setBool(kIsBoardingViewSeen, true);
                      Navigator.pushReplacementNamed(
                          context, LoginView.routeName);
                    },
                    child: Text(
                      'تخط',
                      style: TextStyles.regular13.copyWith(
                        color: const Color(0xFF949D9E),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyles.semiBold13.copyWith(
              color: const Color(0xFF4E5556),
            ),
          ),
        )
      ],
    );
  }
}
