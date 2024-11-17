import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/features/auth/presentation/cubit/signup_cubit/signup_cubit.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/signup_view_body.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SignupViewBody();
      },
    );
  }
}
