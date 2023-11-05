import 'package:flutter/material.dart';

class BottomNavigtionWidget extends StatefulWidget {
  const BottomNavigtionWidget({super.key});

  @override
  State<BottomNavigtionWidget> createState() => _BottomNavigtionWidgetState();
}

class _BottomNavigtionWidgetState extends State<BottomNavigtionWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color.fromARGB(255, 219, 219, 219),
          ),
        ),
      ),
      child: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType
            .fixed, //to display more than 3 bottomnavigation icons.
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // currentIndex: 0,

        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/Home (1).png'),
              ),
              activeIcon: ImageIcon(
                AssetImage('assets/images/Home-Filled.png'),
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/Search.png'),
              ),
              label: 'search'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/Add.png'),
              ),
              label: 'add'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/Reels.png'),
              ),
              label: 'reel'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/User.png'),
              ),
              label: 'user'),
        ],
        currentIndex: _selectedIndex,
      ),
    );
  }
}
