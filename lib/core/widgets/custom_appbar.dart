import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
      ),
      centerTitle: true,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyles.bold19,
      ),
    );
  }

  // Required by PreferredSizeWidget to control AppBar's size
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
