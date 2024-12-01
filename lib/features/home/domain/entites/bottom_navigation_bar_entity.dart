import 'package:fruit_app/core/utils/app_images.dart';

class BottomNavigationBarEntity {
  final String activeImage, inActiveImage;
  final String name;

  BottomNavigationBarEntity(
      {required this.activeImage,
      required this.inActiveImage,
      required this.name});
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
      BottomNavigationBarEntity(
        activeImage: Assets.assetsImagesMyAccountActive,
        inActiveImage: Assets.assetsImagesMyAccountInActive,
        name: 'الرئيسية',
      ),
      BottomNavigationBarEntity(
        activeImage: Assets.assetsImagesProductsActive,
        inActiveImage: Assets.assetsImagesProductsInActive,
        name: 'المنتجات',
      ),
      BottomNavigationBarEntity(
        activeImage: Assets.assetsImagesCartActive,
        inActiveImage: Assets.assetsImagesCartInActive,
        name: 'سله التسوق',
      ),
      BottomNavigationBarEntity(
        activeImage: Assets.assetsImagesMyAccountActive,
        inActiveImage: Assets.assetsImagesMyAccountInActive,
        name: 'حسابي',
      ),
    ];
