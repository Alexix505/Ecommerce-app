import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoriesButton extends StatelessWidget {
  const CategoriesButton({super.key, required this.text, required this.images});
  final String text;
  final String images;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Column(
        children: [
          Image.asset(
            'assets/images/$images',
            height: 90,
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xffEDEDEF),
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(Radius.circular(25)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 7,
                horizontal: 15,
              ),
              child: Text(text),
            ),
          ),
        ],
      ),
    );
  }
}
