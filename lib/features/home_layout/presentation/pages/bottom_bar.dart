import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../home_screen/presentation/pages/page.dart';
import '../../../profile/presentation/pages/profile.dart';

class BottomBar extends StatefulWidget {
  static const String routeName="/";
  BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final List<Widget> _pages = [
    const HomeScreen(),
    Profile(),
  ];

  int _currentIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          children: _pages,
          onPageChanged: (index) {
            _currentIndex = index;
            setState(() {});
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 35.r,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
            _pageController.jumpToPage(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ""
            ),
          ],
        ),
    );
  }


  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
