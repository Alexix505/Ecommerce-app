import 'package:flutter/material.dart';

import 'product_widget.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 8,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0.0,
        childAspectRatio: 1.2,
        mainAxisSpacing: 0.0,
      ),
      itemBuilder: (context, index) {
        return const ProductWidget();
      },
    );
  }
}
