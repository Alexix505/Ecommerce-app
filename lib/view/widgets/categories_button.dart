import 'package:flutter/material.dart';

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
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xffEDEDEF),
              borderRadius: BorderRadius.all(Radius.circular(25)),
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
