import 'package:flutter/material.dart';
import 'package:meal/data/dummy_data.dart';
import 'package:meal/widgets/category_grid_itmes.dart';

class CategeoryScreen extends StatelessWidget {
  const CategeoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Title bar @3")),
      body: GridView(
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for(final category in availableCategories)
          CategoryGridItmes(category: category)
        ],
      ),
    );
  }
}
