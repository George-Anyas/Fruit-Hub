import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'الأكثر مبيعًا',
          textAlign: TextAlign.right,
          style: TextStyles.bold16.copyWith(color: Colors.black),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {},
          child: Text('المزيد',
              textAlign: TextAlign.center,
              style: TextStyles.regular13.copyWith(
                color: Color(0xFF949D9E),
              )),
        ),
      ],
    );
  }
}
