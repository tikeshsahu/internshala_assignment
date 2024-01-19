import 'package:flutter/material.dart';
import 'package:internshala_assignment/src/providers/internships_provider.dart';
import 'package:internshala_assignment/theme/app_theme.dart';
import 'package:internshala_assignment/utils/common/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InternshipProvider(),
      child: MaterialApp(
        title: 'Internshala Assignment',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: const SplashScreen(),
      ),
    );
  }
}
