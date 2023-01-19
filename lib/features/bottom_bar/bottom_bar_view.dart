import 'package:flutter/material.dart';
import 'package:zeeddodashboard/core/resources/color_manager.dart';
import 'package:zeeddodashboard/core/resources/values_manager.dart';
import 'package:zeeddodashboard/core/utils/widgets/custom_app_bar.dart';
import 'package:zeeddodashboard/features/bottom_bar/dash_board/dashboard_view.dart';
import 'package:zeeddodashboard/features/bottom_bar/discover/discover_view.dart';
import 'package:zeeddodashboard/features/bottom_bar/heart/heart_view.dart';
import 'package:zeeddodashboard/features/bottom_bar/home/home_view.dart';
import 'package:zeeddodashboard/features/bottom_bar/order/order_view.dart';
import 'package:zeeddodashboard/features/bottom_bar/profile/profile_view.dart';
import 'package:zeeddodashboard/features/widgets/my_drawer.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({super.key});

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  int _selectedIndex = 5;

  static const List<Map<String, dynamic>> _pages = [
    {
      "title": "Dash Board",
      "screen": DashBoardView(),
    },
    {
      "title": "Home",
      "screen": HomeView(),
    },
    {
      "title": "Discover",
      "screen": DiscoverView(),
    },
    {
      "title": "Order",
      "screen": OrderView(),
    },
    {
      "title": "Heart",
      "screen": HeartView(),
    },
    {
      "title": "Profile",
      "screen": ProfileView(),
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: CustomAppBar(
        title: Text(
          _pages[_selectedIndex]['title'],
        ),
      ),
      body: Center(
        child: _pages[_selectedIndex]['screen'],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: AppSize.s8,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: ColorsManger.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: '',
          ),
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
