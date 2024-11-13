import 'package:flutter/material.dart';
import 'package:fruit_app/constants.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';

class TermsAndCondtionswidget extends StatelessWidget {
  const TermsAndCondtionswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(13, 0),
      child: Row(
        children: [
          Checkbox(
            value: false,
            onChanged: (value) {},
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width -
                (kHorizontalPadding * 2) -
                48,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                    style: TextStyles.semiBold13
                        .copyWith(color: Color(0xFF949D9E)),
                  ),
                  TextSpan(
                    text: 'الشروط والأحكام',
                    style: TextStyles.semiBold13
                        .copyWith(color: Color(0xFF2D9F5D)),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyles.semiBold13.copyWith(
                      color: Color(0xFF616A6B),
                    ),
                  ),
                  TextSpan(
                    text: 'الخاصة',
                    style: TextStyles.semiBold13
                        .copyWith(color: Color(0xFF2D9F5D)),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyles.semiBold13.copyWith(
                      color: Color(0xFF616A6B),
                    ),
                  ),
                  TextSpan(
                    text: 'بنا',
                    style: TextStyles.semiBold13.copyWith(
                      color: Color(0xFF2D9F5D),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
