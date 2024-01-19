import 'package:flutter/material.dart';
import 'package:internshala_assignment/theme/app_dimension.dart';

class AppTheme {
  // static const themeColor = Color(0xFF5686e5);
  static const themeColor = Color(0xFF00A5EC);
  static const themeTextColor = Color.fromARGB(255, 0, 0, 0);
  static const themeBackgroundColor = Color.fromARGB(255, 229, 235, 239);
  static const themeErrorColor = Colors.red;
  static const themeBorderColor = Colors.grey;
  static const themeIconColor = Color.fromARGB(255, 132, 131, 131);

  static const myColorScheme = ColorScheme(
    primary: themeColor,
    secondary: Color.fromARGB(255, 221, 44, 0),
    surface: Colors.white,
    background: themeBackgroundColor,
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.black,
    onBackground: Colors.black,
    onError: Colors.white,
    brightness: Brightness.light,
  );

  static final lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: myColorScheme,
    primaryColor: themeColor,
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: Colors.grey,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: themeTextColor,
      ),
      titleSmall: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w300,
        color: themeTextColor,
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: themeTextColor,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: themeTextColor,
      ),
      labelSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: themeTextColor,
      ),
      displaySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: themeBackgroundColor,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppTheme.themeColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimension.normalRadius - 6.0),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: themeColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimension.normalRadius - 6.0),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
      ),
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      menuStyle: MenuStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
        surfaceTintColor: MaterialStateProperty.resolveWith(
          (states) => Colors.white,
        ),
      ),
      textStyle: const TextStyle(
        fontSize: 16,
        color: themeTextColor,
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(AppTheme.themeColor),
      fillColor: MaterialStateProperty.resolveWith((_) => Colors.transparent),
      side: AlwaysActiveBorderSide(),
      visualDensity: VisualDensity.standard,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppDimension.normalRadius - 8.0,
        ),
      ),
    ),
  );
}

class AlwaysActiveBorderSide extends MaterialStateBorderSide {
  @override
  BorderSide? resolve(Set<MaterialState> states) => const BorderSide(color: AppTheme.themeColor, width: 1.5);
}
