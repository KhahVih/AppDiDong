import 'package:app_travel/core/constants/color_constants.dart';
import 'package:app_travel/core/constants/dismension_constants.dart';
import 'package:app_travel/representation/screens/booking_screen.dart';
import 'package:app_travel/representation/screens/home_screen.dart';
import 'package:app_travel/representation/screens/like_screen.dart';
import 'package:app_travel/representation/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  static const routeName = '/main_app';

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(
              () => _currentIndex = i,
        ),
        selectedItemColor: ColorPalette.primaryColor,
        unselectedItemColor: ColorPalette.primaryColor.withOpacity(0.2),
        selectedColorOpacity: 0.2,
        margin: EdgeInsets.symmetric(horizontal: kMediumPadding, vertical: kDefaultPadding),
        items: [
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.house,
              size: kDefaultPadding,
              color: ColorPalette.primaryColor,
            ),
            title: Text("Home"),
          ),
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.solidHeart,
              size: kDefaultPadding,
              color: ColorPalette.primaryColor,
            ),
            title: Text("Likes"),
          ),
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.briefcase,
              size: kDefaultPadding,
              color: ColorPalette.primaryColor,
            ),
            title: Text("Booking"),
          ),
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.solidUser,
              size: kDefaultPadding,
              color: ColorPalette.primaryColor,
            ),
            title: Text("Profile"),
          ),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeScreen(),
          LikeScreen(),
          Booking(),
          ProfileScreen(),
        ],
      ),
    );
  }
}