import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/constants.dart';
import 'package:fruit_app/core/utils/app_images.dart';

import 'package:fruit_app/core/utils/app_text_styles.dart';
import 'package:fruit_app/core/widgets/custom_button.dart';
import 'package:fruit_app/core/widgets/custom_text_form_field.dart';
import 'package:fruit_app/core/widgets/password_field.dart';
import 'package:fruit_app/features/auth/presentation/cubit/signin_cubit/signin_cubit.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/dont_have_anaccount.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/social_login_button.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  late String email, passowrd;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Form(
          autovalidateMode: autovalidateMode,
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                textInputType: TextInputType.emailAddress,
                hintText: 'البريد الإلكتروني',
              ),
              SizedBox(
                height: 16,
              ),
              PasswordField(onSaved: (value) {
                passowrd = value!;
              }),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'نسيت كلمة المرور؟',
                    style: TextStyles.semiBold13.copyWith(
                      color: Color(
                        0xFF2D9F5D,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 33,
              ),
              CustomButton(
                  text: 'تسجيل دخول',
                  onpressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      context
                          .read<SigninCubit>()
                          .signIn(email, passowrd, 'name');
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  }),
              SizedBox(
                height: 33,
              ),
              DontHaveAnaccount(),
              SizedBox(
                height: 37,
              ),
              OrDivider(),
              SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                image: Assets.assetsImagesGoogleIcon,
                onpressed: () {
                  context.read<SigninCubit>().signInWithGoogle();
                },
                title: 'تسجيل بواسطة جوجل',
              ),
              SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                  image: Assets.assetsImagesAppleLogo,
                  title: 'تسجيل بواسطة أبل',
                  onpressed: () {}),
              SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                  image: Assets.assetsImagesFacebookIcon,
                  title: 'تسجيل بواسطة فيسبوك',
                  onpressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
