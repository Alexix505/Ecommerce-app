import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              alignment: Alignment.center, backgroundColor: Colors.deepPurple),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Added to Cart"),
              ),
            );
          },
          child: Text(
            'ADD TO CART',
            style: ButtonColor,
            textAlign: TextAlign.center,
          )),
    );
  }
}
