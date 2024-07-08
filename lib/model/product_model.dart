import 'package:flutter/cupertino.dart';

class ProductsModel with ChangeNotifier {
  num? id;
  String? title;
  num? price;
  String? description;
  String? category;
  String? image;

  ProductsModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
  });

  ProductsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
  }

  static List<ProductsModel> productFromSnapshot(List productSnapshot) {
    return productSnapshot.map((data) {
      return ProductsModel.fromJson(data);
    }).toList();
  }
}
