import 'package:flutter/material.dart';
import 'package:youchu_frontend/screens/homeScreen.dart';
// import 'package:youchu_frontend/screens/notification.dart';
import 'package:youchu_frontend/screens/profileScreen.dart';
// import 'package:youchu_frontend/screens/searchScreen.dart';
import 'package:youchu_frontend/screens/uploadScreen.dart';

class RoutingScreen extends StatefulWidget {
  @override
  _RoutingScreenState createState() => _RoutingScreenState();
}

class _RoutingScreenState extends State<RoutingScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    // SearchScreen(),
    UploadScreen(),
    // NotificationScreen(),
    ProfileScreen()
  ];
  void _onTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/loginLogo.png',
              scale: 6,
            ),
            Image.asset('assets/loginLogoText.png'),
            Icon(Icons.menu),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onTab,
        currentIndex: _currentIndex,
        fixedColor: Colors.red,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '홈',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.search),
          //   label: '검색',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: '업로드',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.notification_important),
          //   label: '알림',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: '프로필',
          ),
        ],
      ),
      body: _children[_currentIndex],
    );
  }
}
