import 'package:flutter/material.dart';
import 'package:fruit_app/features/on_boarding/presentation/views/widgets/on_boarding_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const String routename = 'OnBoardingView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: OnBoardingBody()),
    );
  }
}
