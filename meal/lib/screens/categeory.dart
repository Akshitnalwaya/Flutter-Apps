import 'package:flutter/material.dart';
import 'package:meal/data/dummy_data.dart';
import 'package:meal/models/category.dart';
import 'package:meal/screens/meals.dart';
import 'package:meal/widgets/category_grid_itmes.dart';

class CategeoryScreen extends StatelessWidget {
  const CategeoryScreen({super.key});

  void _selectCategory(BuildContext context, Category category) {
    final filterMeals = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) =>
            MealsScreen(meals: filterMeals, title: category.title),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        for (final category in availableCategories)
          CategoryGridItmes(
            category: category,
            onSelectCategory: () {
              _selectCategory(context, category);
            },
          ),
      ],
    );
  }
}
