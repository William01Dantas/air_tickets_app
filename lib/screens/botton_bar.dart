import 'package:air_tickets_app/screens/home_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottonBarr extends StatefulWidget {
  const BottonBarr({Key? key}) : super(key: key);

  @override
  State<BottonBarr> createState() => _BottonBarrState();
}

class _BottonBarrState extends State<BottonBarr> {
  int _slectedIndex = 0;
  static final List<Widget>_widgetOptions =<Widget>[
    HomeScreen(),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile"),
  ];

  void _onItemTapped(int index){
    setState(() {
      _slectedIndex = index;
    });
    // print("Tapped index is ${_slectedIndex}"); test
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: _widgetOptions[_slectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _slectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_airplane_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_airplane_filled),
            label: "Ticke",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: "Person",
          ),
        ],
      ),
    );
  }
}
