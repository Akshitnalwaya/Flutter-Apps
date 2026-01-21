import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColorsScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(207, 102, 193, 42),
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        // scaffoldBackgroundColor: Colors.amberAccent,
        colorScheme: kColorsScheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorsScheme.onPrimaryContainer,
          foregroundColor: kColorsScheme.primaryContainer,
        ),
        // cardTheme: CardThemeData(
        //   color: kColorsScheme.onPrimaryContainer,
        //   margin: EdgeInsets.all(16),
        // )
      ),
      home: Expenses(),
    ),
  );
}
