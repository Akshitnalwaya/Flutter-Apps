import 'package:flutter/material.dart';
import 'package:meal/screens/categeory.dart';
import 'package:meal/screens/meals.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const CategeoryScreen();
    var activePageTitle = 'Categories';

    if (selectedPageIndex == 1) {
      activePage = MealsScreen(meals: []);
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
BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Fav',
          ),          
        ],
      ),
      
    );
  }
}
