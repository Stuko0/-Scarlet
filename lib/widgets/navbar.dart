import 'package:flutter/material.dart';
import 'package:scarlet_app/screens/maps/realtime_page.dart';

class NavBar extends StatefulWidget {
  final int initialIndex;
  final int subIndex;
  const NavBar(
      {super.key,
      this.initialIndex = 0,
      this.subIndex = 0,});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  late int _currentIndex;
  late int _subIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _subIndex = widget.subIndex;
  }

  @override
  Widget build(BuildContext context) {
    final List<List<Widget>> children = [
      [
        const RealTimePage(),
      ],
      [
        const RealTimePage(),
      ],
      [
        const RealTimePage(),
      ],
      [
        const RealTimePage(),
      ],
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        body: children[_currentIndex][_subIndex],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              border:
                  Border(top: BorderSide(color: Color(0xffe4e4e4), width: 1))),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                _subIndex = 0;
              });
            },
            selectedItemColor: const Color(0XFFDF8946),
            showUnselectedLabels: true,
            enableFeedback: false,
            unselectedItemColor: const Color(0XFFBEBEBE),
            items: [
              BottomNavigationBarItem(
                icon: Image.asset('assets/img/icons/real-time-noselected.png',
                    width: 24, height: 24),
                label: 'Tiempo Real',
                activeIcon: Image.asset(
                    'assets/img/icons/selected-real-time.png',
                    width: 24,
                    height: 24),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                    'assets/img/icons/fire-noselected.png',
                    width: 24,
                    height: 24),
                label: 'Pronostico',
                activeIcon: Image.asset(
                    'assets/img/icons/fire-selected.png',
                    width: 24,
                    height: 24),
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/img/icons/people-noselected.png',
                    width: 24, height: 24),
                label: 'Equipos',
                activeIcon: Image.asset(
                    'assets/img/icons/people-selected.png',
                    width: 24,
                    height: 24),
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/img/icons/user-noselected.png',
                    width: 24, height: 24),
                label: 'Perfil',
                activeIcon: Image.asset(
                    'assets/img/icons/user-selected.png',
                    width: 24,
                    height: 24),
              ),
            ],
          ),
        ));
  }
}