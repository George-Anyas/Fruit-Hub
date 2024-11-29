import 'package:flutter/material.dart';
import 'package:fruit_app/features/home/presentaion/views/widgets/custom_bottom_navigation_bar.dart';

import 'package:fruit_app/features/home/presentaion/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: HomeViewBody()),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
