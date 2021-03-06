import 'package:educacionapp/models/category.dart';
import 'package:flutter/material.dart';
import 'package:educacionapp/util/course_card.dart';
import 'package:educacionapp/util/category_card.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.menu),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.person),
            )
          ],
        ),
        //botones de navegacion
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          ],
        ),

        //lo mejor para aprender
        body: Column(
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "!Lo mejor para poder estudiar!",
                  style: TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold),
                )),
            const SizedBox(height: 25),
            
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Qué quieres aprender?",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey.shade800),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade800)),
                  ),
                )
              ),
              GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 24,
                ),
                itemBuilder: (context, index) {
                  return CategoryCard(
                    category: categoryList[index],
                  );
                },
                itemCount: categoryList.length,
              ),
              

      ]),
    );
  }
}
