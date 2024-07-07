import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(8.0),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: FancyShimmerImage(
                      imageUrl:
                          'https://images.unsplash.com/photo-1465572089651-8fde36c892dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
                ),
              ),
              const Positioned(
                child: Text(
                  ' Iron',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.deepPurple,
                      size: 28,
                    ),
                  )),
              Positioned(
                bottom: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: ' \$',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                        children: [
                          TextSpan(
                            text: '500',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
