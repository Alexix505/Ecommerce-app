import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/model/product_model.dart';
import 'package:ecommerce_app/view/product_view.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final ProductsModel product;
  const ProductWidget({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(8.0),
        onTap: () {
          // this place handles the routing to the product details page
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductView(product: product)));
        },
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),

                // the Hero widget help to give an animated effect on transition while the cached network image helps you to cached images so it loads easily
                child: Hero(
                  tag: product.image!,
                  child: CachedNetworkImage(
                    height: MediaQuery.of(context).size.width *
                        0.25, // 25% of screen width
                    width: MediaQuery.of(context).size.width * 0.25, //
                    imageUrl: product.image.toString(),
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 150,
                ),
                child: Text(
                  '${product.title}',
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                      color: Colors.black.withOpacity(
                        0.8,
                      )),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 150,
                ),
                child: Text(
                  '\$${product.price}',
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5,
                    color: Colors.black.withOpacity(
                      0.8,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
