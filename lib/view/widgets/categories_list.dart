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
      'Wigs',
      'Beauty',
    ];
    List<String> images = [
      'beauty.png',
      'Phones.png',
      'Accessories.png',
      'Wigs.png',
      'beauty.png',
    ];

    return Row(
      children: List.generate(catList.length, (index) {
        final cart = catList[index];
        final image = images[index];
        return CategoriesButton(
          text: cart,
          images: image,
        );
      }),
    );
  }
}
