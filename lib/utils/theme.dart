import 'package:flutter/material.dart';

import '../utils/constants/constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kWhite,
    fontFamily: "Roboto",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: kBlack),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    titleMedium: TextStyle(color: kBlack),
    bodyLarge: TextStyle(color: kBlack),
    bodyMedium: TextStyle(color: kBlack),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
      backgroundColor: kWhite,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(color: kWhite, fontSize: 18));
}
