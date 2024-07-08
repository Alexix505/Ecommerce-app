import 'package:ecommerce_app/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/home_view.dart';

//Entry point to this ecommerce project

void main() {
  runApp(
    //initialization of the provider listeners
    MultiProvider(
      providers: [
        Provider(
          create: (context) => ProductsModel(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce',
      home: HomeScreen(),
    );
  }
}
