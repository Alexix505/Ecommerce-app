import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/product_model.dart';
import 'product_widget.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    super.key,
    required this.productsList,
  });
  final List<ProductsModel> productsList;

  @override
  Widget build(BuildContext context) {
    // this widget displays content on grid using two data on a row, and the amount of data from the server
    return GridView.builder(
      itemCount: productsList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0.0,
        childAspectRatio: 1.2,
        mainAxisSpacing: 0.0,
      ),
      itemBuilder: (context, index) {
        // widget for displaying the product in a card format
        return ProductWidget(product: productsList[index]);
      },
    );
  }
}
