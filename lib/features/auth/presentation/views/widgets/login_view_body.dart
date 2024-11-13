import 'package:flutter/material.dart';
import 'package:fruit_app/constants.dart';
import 'package:fruit_app/core/utils/app_images.dart';

import 'package:fruit_app/core/utils/app_text_styles.dart';
import 'package:fruit_app/core/widgets/custom_button.dart';
import 'package:fruit_app/core/widgets/custom_text_form_field.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/dont_have_anaccount.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                textInputType: TextInputType.emailAddress,
                hintText: 'البريد الإلكتروني',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xffC9CECF),
                ),
                textInputType: TextInputType.visiblePassword,
                hintText: 'كلمة المرور',
              ),
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
                onpressed: () {},
              ),
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
                onpressed: () {},
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
                  onpressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
