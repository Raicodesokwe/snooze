import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snoozeupdemo/screens/pools_page.dart';
import 'package:snoozeupdemo/screens/profile_page.dart';

import '../screens/home_page.dart';
import 'bounce_tabs.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageTransitionSwitcher(
        duration: Duration(seconds: 1),
        transitionBuilder: (child, animation, secondaryAnimation) {
          return FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: IndexedStack(
          key: ValueKey<int>(_currentIndex),
          index: _currentIndex,
          children: [
            HomePage(),
            PoolsPage(),
            ProfilePage(),
          ],
        ),
      ),
      bottomNavigationBar: BounceTabBar(
        initialIndex: 0,
        onTabChanged: (index) {
          print(index);
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Color(0xFF313156),
        items: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.house,
                color: Colors.white,
              ),
              Text(
                'home',
                style: GoogleFonts.prompt(
                  fontSize: 12,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.solidObjectGroup,
                color: Colors.white,
              ),
              Text(
                'pools',
                style: GoogleFonts.prompt(
                  fontSize: 12,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.user,
                color: Colors.white,
              ),
              Text(
                'profile',
                style: GoogleFonts.prompt(
                  fontSize: 12,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
