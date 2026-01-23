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
          backgroundColor: Colors.amberAccent,
          // backgroundColor: kColorsScheme.secondaryContainer,
          // backgroundColor: kColorsScheme.primaryContainer,
          //   backgroundColor: kColorsScheme.onPrimaryContainer,
          //   backgroundColor: kColorsScheme.onPrimary,
          elevation: 40,
          foregroundColor: kColorsScheme.primaryContainer,
        //   shadowColor: Colors.black,
        ),
        cardTheme: CardThemeData(
          color: kColorsScheme.secondary,
          margin: EdgeInsets.all(16),
          shadowColor: Colors.black12
        )
      ),
      home: Expenses(),
    ),
  );
}
