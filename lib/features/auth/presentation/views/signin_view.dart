import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/core/services/get_it_service.dart';

import 'package:fruit_app/core/widgets/custom_appbar.dart';
import 'package:fruit_app/features/auth/domain/repos/auth_repo.dart';
import 'package:fruit_app/features/auth/presentation/cubit/signin_cubit/signin_cubit.dart';

import 'package:fruit_app/features/auth/presentation/views/widgets/signin_body_bloc_consumer.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});
  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'تسجيل دخول',
        ),
        body: SignInBodyBlocConsumer(),
      ),
    );
  }
}
