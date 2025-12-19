import 'package:common_template/features/views/home_view.dart';
import 'package:common_template/features/views/profile_view.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/common_bottom_nav.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeView(),
    Center(child: Text('Search Page')),
    Center(child: Text('Favorites Page')),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CommonBottomNav(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
