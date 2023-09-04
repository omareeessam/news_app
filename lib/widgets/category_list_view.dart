import 'package:flutter/material.dart';

import '../model/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({
    super.key,
  });
  List<CategoryModel> categories = [
    CategoryModel(image: 'assets/science.avif', categoryName: 'Business'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'entertainment'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'science'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(categor: categories[index]);
        },
      ),
    );
  }
}
