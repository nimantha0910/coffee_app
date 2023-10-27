import 'package:flutter/material.dart';
import 'package:flutter_application_coffee/screens/home.dart';

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        indicatorColor: Colors.white,
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.home,
                  color: Color(0xffc67c4e),
                  size: 35,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  width: 20,
                  height: 5,
                  color: const Color(0xffc67c4e),
                ),
              ],
            ),
            icon: const Icon(
              Icons.home_outlined,
              size: 35,
            ),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.favorite,
                  color: Color(0xffc67c4e),
                  size: 35,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  width: 20,
                  height: 5,
                  color: const Color(0xffc67c4e),
                ),
              ],
            ),
            icon: const Icon(
              Icons.favorite_border_outlined,
              size: 35,
            ),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.shopping_bag,
                  color: Color(0xffc67c4e),
                  size: 35,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  width: 20,
                  height: 5,
                  color: const Color(0xffc67c4e),
                ),
              ],
            ),
            icon: const Icon(
              Icons.shopping_bag_outlined,
              size: 35,
            ),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.notifications_active,
                  color: Color(0xffc67c4e),
                  size: 35,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  width: 20,
                  height: 5,
                  color: const Color(0xffc67c4e),
                ),
              ],
            ),
            icon: const Icon(
              Icons.notifications_active_outlined,
              size: 35,
            ),
            label: '',
          ),
        ],
      ),
      body: <Widget>[
        const HomeScreen(),
        Container(
          color: Colors.black26,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: Colors.black26,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
        Container(
          color: Colors.black26,
          alignment: Alignment.center,
          child: const Text('Page 4'),
        ),
      ][currentPageIndex],
    );
  }
}
