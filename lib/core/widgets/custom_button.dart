import 'package:flutter/material.dart';
import 'package:fruit_app/constants.dart';
import 'package:fruit_app/core/services/shared_prefrences.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';
import 'package:fruit_app/features/auth/presentation/views/login_view.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onpressed, required this.text});
  final VoidCallback onpressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Prefs.setBool(kIsBoardingViewSeen, true);
        Navigator.of(context).pushReplacementNamed(LoginView.routeName);
      },
      child: Column(
        children: [
          Container(
            width: 343,
            height: 54,
            padding: EdgeInsets.symmetric(horizontal: 48, vertical: 15),
            decoration: ShapeDecoration(
              color: const Color(0xFF1B5E37),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyles.bold16.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
