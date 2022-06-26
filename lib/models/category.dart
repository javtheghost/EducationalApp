
class Category{
  final String iconImagePath;
  final String categoryName;

   Category({
    required this.iconImagePath,
    required this.categoryName,
  });
}

List<Category> categoryList = [
  Category(
    categoryName: 'Programming',
    iconImagePath: 'assets/images/courses/icprogramming.png',
  ),
  Category(
    categoryName: 'Math',
    iconImagePath: 'assets/images/courses/icmath.png',
  ),
   Category(
    categoryName: 'Fisic',
    iconImagePath: 'assets/images/courses/icfisica.png',
  ),

];