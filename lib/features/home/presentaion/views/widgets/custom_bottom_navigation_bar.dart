import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fruit_app/features/home/domain/entites/bottom_navigation_bar_entity.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          children: bottomNavigationBarItems.map((e) {
            return NavgationBarItem(
                bottomNavigationBarEntity: e, isSelected: false);
          }).toList(),
        ),
        width: 375,
        height: 70,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 25,
              offset: Offset(0, -2),
              spreadRadius: 0,
            )
          ],
        ));
  }
}

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(child: SvgPicture.asset(image));
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class NavgationBarItem extends StatelessWidget {
  const NavgationBarItem(
      {super.key,
      required this.isSelected,
      required this.bottomNavigationBarEntity});
  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem()
        : InActiveItem(
            image: bottomNavigationBarEntity.inActiveImage,
          );
  }
}
