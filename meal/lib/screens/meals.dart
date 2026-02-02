import 'package:flutter/material.dart';
import 'package:meal/models/meal.dart';
import 'package:meal/screens/details.dart';
import 'package:meal/widgets/meals_items.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.meals, this.title,required this.onToggleFav});

  final String? title;
  final List<Meal> meals;
  final void Function(Meal meal) onToggleFav;

  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (ctx) => MealDetailsScreen(meal: meal,onToggleFav: onToggleFav ,)));
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Nothing here !!!",
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Try some other section",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
        ],
      ),
    );

    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => MealsItems(
          meal: meals[index],
          onSelectMeal: (meal) {
            selectMeal(context, meal);
          },
        ),
      );
    }
    if (title == null) {
      return content;
    }
    return Scaffold(
      appBar: AppBar(title: Text(title!),),
      body: content,
    );
  }
}
