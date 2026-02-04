// import 'package:flutter/material.dart';

// class SideDrawer extends StatelessWidget {
//   const SideDrawer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Column(
//         children: [
//           DrawerHeader(child: Text("Main Heading")),
//           Text("First"),
//           SizedBox(height: 12),
//           Text("Second"),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key, required this.onSelecetMeal});
  final void Function(String identifier) onSelecetMeal;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(
                    context,
                  ).colorScheme.primaryContainer.withOpacity(0.23),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.fastfood, color: Colors.amber, size: 49),
                SizedBox(width: 20),
                Text(
                  "Side Bar",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              onSelecetMeal('meals');
            },
            title: Text("Meal", style: TextStyle(fontSize: 29)),
            leading: Icon(Icons.food_bank, size: 35),
          ),
          ListTile(
            onTap: () {
              onSelecetMeal('filter');
            },
            title: Text("Fav", style: TextStyle(fontSize: 29)),
            leading: Icon(Icons.star_rate, size: 35),
          ),
        ],
      ),
    );
  }
}
