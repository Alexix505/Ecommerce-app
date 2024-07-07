import 'package:flutter/material.dart';
import 'widgets/appbar.dart';
import 'widgets/card_swipper.dart';
import 'widgets/categories_list.dart';

import 'widgets/product_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const MyAppBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Discover Products',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.filter_list_outlined),
                      ),
                    ],
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        CategoriesList(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' Favorites',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 200,
                          child: CardSwiper(),
                        ),
                      ],
                    ),
                    Text(
                      ' Products',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    ProductGrid(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
