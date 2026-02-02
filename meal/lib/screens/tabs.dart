import 'package:flutter/material.dart';
import 'package:meal/models/meal.dart';
import 'package:meal/screens/categeory.dart';
import 'package:meal/screens/meals.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int selectedPageIndex = 0;
  final List<Meal> _favoriteMeals = [];
  void _toggleMealFavoriteStatus(Meal meal) {
    final isExisting = _favoriteMeals.contains(meal);
    if (isExisting) {
      setState(() {
        _favoriteMeals.remove(meal);
        _meesage("removed");
      });
    } else {
      setState(() {
        _favoriteMeals.add(meal);
        _meesage("Added");
      });
    }
  }

  void _meesage(String mess) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(mess),     duration: Duration(microseconds: 15),));
  }

  void _selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = CategeoryScreen(onToggleFav: _toggleMealFavoriteStatus);
    var activePageTitle = 'Categories';

    if (selectedPageIndex == 1) {
      activePage = MealsScreen(
        meals: _favoriteMeals,
        onToggleFav: _toggleMealFavoriteStatus,
      );
      activePageTitle = 'your FAv';
    }
    return Scaffold(
      appBar: AppBar(title: Text(activePageTitle)),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal_outlined),
            label: 'Categorgy',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Fav'),
        ],
      ),
    );
  }
}
