import 'package:flutter/material.dart';

import 'package:fruit_app/core/widgets/custom_appbar.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'تسجيل دخول',
      ),
      body: LoginViewBody(),
    );
  }
}
