import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../model/product_model.dart';
import 'widgets/cart_button.dart';

class ProductView extends StatelessWidget {
  final ProductsModel product;
  const ProductView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Hero(
                tag: product.image!,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  child: CachedNetworkImage(
                    imageUrl: product.image!,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Text(
                  ' \$${product.price.toString()}',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title.toString(),
                    // overflow: TextOverflow.ellipsis,
                    // maxLines: 2,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Product Description',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    product.description.toString(),
                  ),
                  Expanded(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: AddToCart(),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
