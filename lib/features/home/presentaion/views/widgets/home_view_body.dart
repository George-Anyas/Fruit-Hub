import 'package:flutter/material.dart';
import 'package:fruit_app/constants.dart';
import 'package:fruit_app/core/widgets/custom_search_text_filed.dart';
import 'package:fruit_app/features/home/presentaion/views/widgets/best_selling_grid_view.dart';
import 'package:fruit_app/features/home/presentaion/views/widgets/best_selling_header.dart';
import 'package:fruit_app/features/home/presentaion/views/widgets/custom_home_app_bar.dart';
import 'package:fruit_app/features/home/presentaion/views/widgets/featured_list_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Wrapping non-sliver content in SliverToBoxAdapter
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
                SizedBox(
                  height: 12,
                ),
                FeaturedListItem(),
                SizedBox(
                  height: 12,
                ),
                BestSellingHeader(), // This can stay here
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
        // Adding BestSellingGridView as a separate sliver
        BestSellingGridView(), // Ensure this is a sliver widget (e.g., contains SliverGrid)
      ],
    );
  }
}
