import 'package:flutter/material.dart';

import 'package:fruit_app/core/widgets/custom_appbar.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/signin_view_body.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});
  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'تسجيل دخول',
      ),
      body: SigninViewBody(),
    );
  }
}
