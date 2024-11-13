import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.image,
    required this.title,
    required this.onpressed,
  });

  final String image;
  final String title;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: TextButton(
        onPressed: onpressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xFFDCDEDE)),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: ListTile(
          visualDensity: VisualDensity(vertical: VisualDensity.minimumDensity),
          title: Text(
            title,
            textAlign: TextAlign.center,
            style:
                TextStyles.semiBold16.copyWith(color: const Color(0xFF0C0D0D)),
          ),
          leading: SvgPicture.asset(
            image,
          ), // Use the passed image variable
        ),
      ),
    );
  }
}
