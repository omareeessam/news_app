import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';
import 'package:news_app/views/category_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categor,
  });
  final CategoryModel categor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryView(category: categor.categoryName,),
            ));
      },
      child: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Container(
          height: 100,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(categor.image)),
              color: Colors.yellow),
          child: Center(
            child: Text(
              categor.categoryName,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
