import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/core/widgets/custom_modal_progress_hud.dart';
import 'package:fruit_app/features/auth/presentation/cubit/signin_cubit/signin_cubit.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/signin_view_body.dart';

class SignInBodyBlocConsumer extends StatelessWidget {
  const SignInBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return CustomProgressIndicator(
            isLoading: state is SigninLoading ? true : false,
            child: SigninViewBody());
      },
    );
  }
}
