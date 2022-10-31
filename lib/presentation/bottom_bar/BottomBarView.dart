import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/values_manager.dart';
import '../widgets/custom_app_bar.dart';
import 'discover/discover_view.dart';
import 'heart/heart_view.dart';
import 'home/home_view.dart';
import 'profile/profile_view.dart';
import 'order/order_view.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({super.key});

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomeView(),
    DiscoverView(),
    OrderView(),
    HeartView(),
    ProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManger.white,
      appBar: const CustomAppBar(),
      body: Center(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: AppSize.s8,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: ColorsManger.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adjust_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorsManger.primary,
        unselectedItemColor: ColorsManger.secondColor,
        onTap: _onItemTapped,
      ),
    );
  }

}
