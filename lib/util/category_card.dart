import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:educacionapp/models/category.dart';

class CategoryCard extends StatelessWidget {
final Category category;
  const CategoryCard({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {},

      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(.1),
              blurRadius: 4.0,
              spreadRadius: .05,
            ),
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
             child: Image.asset(
              
              category.iconImagePath,
            
             ),
            ),
            SizedBox(
              height: 10
            ),
            Text(category.categoryName)            
          ],
        ),
      ),
    );
  }
}