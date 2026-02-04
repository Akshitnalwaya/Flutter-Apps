import 'package:flutter/material.dart';
import 'package:meal/screens/tabs.dart';
import 'package:meal/widgets/side_drawer.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFreeFilterSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your filter")),
      drawer: SideDrawer(
        onSelecetMeal: (identifier) {
          Navigator.of(context).pop();
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (ctx) => TabsScreen()));
        },
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: _glutenFreeFilterSet,
            onChanged: (value) {
              setState(() {
                _glutenFreeFilterSet = value;
              });
            },
            title: Text(
              'Gluten-free',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            subtitle: Text(
              'Only for test of glutin',
              style: TextStyle(color: Colors.blueAccent),
            ),
            activeColor: Colors.pink,
            contentPadding: EdgeInsets.only(left: 23, right: 32),
          ),
        ],
      ),
    );
  }
}
