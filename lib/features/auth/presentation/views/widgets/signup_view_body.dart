import 'package:flutter/material.dart';
import 'package:fruit_app/constants.dart';
import 'package:fruit_app/core/widgets/custom_button.dart';
import 'package:fruit_app/core/widgets/custom_text_form_field.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/have_account_already.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/terms_and_condtions.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextFormField(
                hintText: 'الاسم كامل', textInputType: TextInputType.name),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.name),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TermsAndCondtionswidget(),
            SizedBox(
              height: 30,
            ),
            CustomButton(onpressed: () {}, text: 'إنشاء حساب جديد'),
            SizedBox(
              height: 26,
            ),
            HaveAccountAlready(),
          ],
        ),
      ),
    );
  }
}
