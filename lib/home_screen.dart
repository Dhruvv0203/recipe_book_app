import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {'name': 'Pasta', 'details': 'Ingredients: Pasta, Sauce, Cheese'},
    {'name': 'Pizza', 'details': 'Ingredients: Dough, Tomato Sauce, Cheese'},
    {'name': 'Salad', 'details': 'Ingredients: Lettuce, Tomato, Cucumber'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recipe Book")),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipe: recipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
