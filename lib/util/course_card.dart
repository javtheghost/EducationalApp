import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final iconPathImage;
  final String courseName;
  final String description;


  const CourseCard({Key? key, 
  required this.iconPathImage,
   required this.courseName,
   required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25, bottom: 25),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(10),
          color: Colors.black45
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
                
                borderRadius: BorderRadius.circular(15),
                
                child: Image.asset(iconPathImage,
                height: 150,
                width: 200,),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(courseName),
                  Text(
                    description,
                    style: TextStyle(fontSize:15)
                  ),
                ],
              ), 
            )
          ],
          
        ),
      ),
    );
  }
}