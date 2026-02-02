import 'package:flutter/material.dart';
import 'package:meal/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({
    super.key,
    required this.meal,
    required this.onToggleFav,
  });

  final Meal meal;
  final void Function(Meal meal) onToggleFav;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [
          IconButton(
            onPressed: () {
              onToggleFav(meal);
            },
            icon: Icon(Icons.star),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                meal.imageUrl,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Ingredients',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 12),
            for (final ingredient in meal.ingredients)
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text(
                  '• $ingredient',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            const SizedBox(height: 24),
            Text(
              'Steps',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 12),
            for (int i = 0; i < meal.steps.length; i++)
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text(
                  '${i + 1}. ${meal.steps[i]}',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
