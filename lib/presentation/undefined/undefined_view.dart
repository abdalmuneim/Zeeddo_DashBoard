import 'package:flutter/material.dart';

import '../../presentation/resources/app_strings.dart';
class UndefinedView extends StatelessWidget {
  const UndefinedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(child: Text(AppStrings.noRouteFound)));
  }
}
