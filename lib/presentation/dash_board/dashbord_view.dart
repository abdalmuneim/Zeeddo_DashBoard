import 'package:flutter/material.dart';
import 'package:zeeddodashboard/presentation/widgets/my_drawer.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const MyDrawer(),
      body: Container(),
    );
  }
}
