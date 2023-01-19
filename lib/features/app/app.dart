import 'package:flutter/material.dart';
import 'package:zeeddodashboard/core/resources/app_strings.dart';
import 'package:zeeddodashboard/core/resources/routes_manager.dart';
import 'package:zeeddodashboard/core/resources/theme_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp._internal();

  static const MyApp _instance = MyApp._internal();

  factory MyApp() => _instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.zeeddo,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
