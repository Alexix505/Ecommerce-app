import 'package:flutter/material.dart';
import 'categories_button.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //  List of categories
    List<String> catList = [
      'Fashion',
      'Phones',
      'Accessories',
      'Cosmetic',
      'Beauty',
    ];
    List<String> svgImages = [
      'beauty.png',
      'Phones.png',
      'Accessories.png',
      'cosmetics.png',
      'beauty.png',
    ];

    return Row(
      children: List.generate(catList.length, (index) {
        final cart = catList[index];
        final image = svgImages[index];
        return CategoriesButton(
          text: cart,
          images: image,
        );
      }),
    );
  }
}
