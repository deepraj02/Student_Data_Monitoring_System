import 'package:flutter/material.dart';
import 'package:atlass_app/screens/screens.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const ProfilePage(),
    const AttendancePage(),
    const SettingsPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF232c51),
      body: Center(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          indicatorColor: Color(0xFFF0DCDC),

          //indicatorShape:
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          child: NavigationBar(
            elevation: 10,
            backgroundColor: const Color(0xff18203d),
            height: 70,
            animationDuration: const Duration(seconds: 1),
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            selectedIndex: _currentIndex,
            onDestinationSelected: (int newIndex) {
              setState(() {
                _currentIndex = newIndex;
              });
            },
            destinations: const [
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.person,
                  size: 30,
                ),
                icon: Icon(
                  Icons.person_outlined,
                  color: Colors.white,
                ),
                label: "Profile",
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.date_range,
                  size: 30,
                ),
                icon: Icon(
                  Icons.date_range_outlined,
                  color: Colors.white,
                ),
                label: "Attendence",
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.settings,
                  size: 30,
                ),
                icon: Icon(
                  Icons.settings_outlined,
                  color: Colors.white,
                ),
                label: "Settings",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
