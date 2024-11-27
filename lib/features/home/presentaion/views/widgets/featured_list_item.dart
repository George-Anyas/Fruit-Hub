import 'package:flutter/material.dart';
import 'package:fruit_app/features/home/presentaion/views/widgets/featured_item.dart';

class FeaturedListItem extends StatelessWidget {
  const FeaturedListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            4,
            (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: FeaturedItem(),
                )),
      ),
    );
  }
}
