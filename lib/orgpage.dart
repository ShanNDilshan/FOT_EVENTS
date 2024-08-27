import 'package:flutter/material.dart';
import 'package:fot_eventsx/aboutus.dart';
import 'package:fot_eventsx/activepage.dart';
import 'package:fot_eventsx/feedpage.dart';
import 'package:fot_eventsx/profilepage.dart';

//OrganizationPage
class OrganizationPage extends StatefulWidget {
  const OrganizationPage({super.key});

  @override
  State<OrganizationPage> createState() => _OrganizationPageState();
}

class _OrganizationPageState extends State<OrganizationPage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("FOT EVENTS"),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Active',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'About Us',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('7'),
              child: Icon(Icons.messenger_sharp),
            ),
            label: 'Join',
          ),
          NavigationDestination(
            icon: Badge(
              child: Icon(Icons.account_box),
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        /// Active page
        const Center(
          child: ActivePage(),
        ),

        /// About us page
        const Center(
          child: AboutUs(),
        ),

        /// Join page
        const Center(
          child: FeedPage(),
        ),
        // Profile page
        const Center(
          child: ProfilePage(),
        ),
      ][currentPageIndex],
    );
  }
}
