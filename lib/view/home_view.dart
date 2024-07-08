import 'package:ecommerce_app/model/product_model.dart';
import 'package:flutter/material.dart';
import '../services/api_services.dart';
import 'widgets/appbar.dart';
import 'widgets/card_swipper.dart';
import 'widgets/categories_list.dart';
import 'widgets/product_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ProductsModel> productsList = [];

  @override
  Widget build(BuildContext context) {
    // final featured =  context.read
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // custom appbar that house the drawer, search icon and notification

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
                  // Single Child Scroll view housed the categories list to make it scrollable
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
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.0,
                          ),
                          child: Text(
                            'Favorites',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 200,
                          //using the CarSwiper to
                          child: CardSwiper(),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.0,
                      ),
                      child: Text(
                        'Products',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    /*
                    *
                    * The Future builder is used to check any error exit before displaying content
                    *
                    * */
                    FutureBuilder<List<ProductsModel>>(
                      future: APIServices.getProducts(),
                      builder: ((context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (snapshot.hasError) {
                          Center(
                            child: Text('An error occurred ${snapshot.error}'),
                          );
                        }
                        // this is the custom gridview widget i created to display the products
                        return ProductGrid(
                          productsList: snapshot.data!,
                        );
                      }),
                    ),
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
