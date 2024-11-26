import 'package:flutter/widgets.dart';
import 'package:fruit_app/constants.dart';
import 'package:fruit_app/core/widgets/custom_search_text_filed.dart';
import 'package:fruit_app/features/home/presentaion/views/widgets/custom_home_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: Column(
              children: [
                CustomHomeAppBar(),
                SizedBox(
                  height: kTopPadding,
                ),
                CustomSearchTextField(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
