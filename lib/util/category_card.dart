import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final iconImagePath;
  final String categoryName;
  const CategoryCard({Key? key, required this.iconImagePath, required this.categoryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0),
       child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
        color: Colors.black45
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(
            iconImagePath,
            height: 40,
            ),
            Text(categoryName)
          ],
        ),
       ),
    );
  }
}