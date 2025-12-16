import 'package:common_template/features/views/profile_view.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/common_bottom_nav.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text('Home Page')),
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
