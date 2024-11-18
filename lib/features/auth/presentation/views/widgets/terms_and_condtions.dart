import 'package:flutter/material.dart';

import 'package:fruit_app/core/utils/app_text_styles.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/custom_check_books.dart';

class TermsAndCondtionswidget extends StatefulWidget {
  const TermsAndCondtionswidget({super.key, required this.onChanged});
  final ValueChanged<bool> onChanged;
  @override
  State<TermsAndCondtionswidget> createState() =>
      _TermsAndCondtionswidgetState();
}

class _TermsAndCondtionswidgetState extends State<TermsAndCondtionswidget> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBooks(
          onChecked: (value) {
            isTermsAccepted = value;
            widget.onChanged (value);
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                  style:
                      TextStyles.semiBold13.copyWith(color: Color(0xFF949D9E)),
                ),
                TextSpan(
                  text: 'الشروط والأحكام',
                  style:
                      TextStyles.semiBold13.copyWith(color: Color(0xFF2D9F5D)),
                ),
                TextSpan(
                  text: ' ',
                  style: TextStyles.semiBold13.copyWith(
                    color: Color(0xFF616A6B),
                  ),
                ),
                TextSpan(
                  text: 'الخاصة',
                  style:
                      TextStyles.semiBold13.copyWith(color: Color(0xFF2D9F5D)),
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
    );
  }
}
