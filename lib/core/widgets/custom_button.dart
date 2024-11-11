import 'package:flutter/material.dart';
import 'package:fruit_app/features/auth/presentation/views/login_view.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onpressed});
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacementNamed(LoginView.routeName);
      },
      child: Column(
        children: [
          Container(
            width: 343,
            height: 54,
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 15),
            decoration: ShapeDecoration(
              color: const Color(0xFF1B5E37),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'ابدأ الان',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
