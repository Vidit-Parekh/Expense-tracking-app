import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

var colorTheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 101, 199, 201));
/*var darkTheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);*/

void main() {
  runApp(
    MaterialApp(
      /*darkTheme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: darkTheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: darkTheme.onSecondaryContainer,
          foregroundColor: darkTheme.onSecondaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: darkTheme.onSecondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: darkTheme.secondaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: colorTheme.onPrimaryContainer,
              fontSize: 20,
            )),
      ),*/
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: colorTheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: colorTheme.secondaryContainer,
          foregroundColor: colorTheme.onSecondaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: colorTheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: colorTheme.secondaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: colorTheme.onSecondaryContainer,
              fontSize: 20,
            )),
      ),
      //themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
}
