import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/core/utils/app_images.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Padding(
        padding: EdgeInsets.all(12.0),
        child: Container(
          child: SvgPicture.asset(Assets.assetsImagesNotification),
        ),
      ),
      leading: Image.asset(Assets.assetsImagesProfileIcon),
      title: Text(
        'صباح الخير !..',
        textAlign: TextAlign.right,
        style: TextStyles.semiBold13,
      ),
      subtitle: Text(
        'أحمد مصطفي',
        textAlign: TextAlign.right,
        style: TextStyle(
          color: Color(0xFF0C0D0D),
          fontSize: 16,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w700,
          height: 0,
        ),
      ),
    );
  }
}
