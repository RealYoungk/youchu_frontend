import 'package:flutter/material.dart';
import 'package:youchu_frontend/screens/homeScreen.dart';
import 'package:youchu_frontend/screens/loginScreen.dart';
import 'package:youchu_frontend/screens/notification.dart';
import 'package:youchu_frontend/screens/profileScreen.dart';
import 'package:youchu_frontend/screens/routingScreen.dart';
import 'package:youchu_frontend/screens/searchScreen.dart';
import 'package:youchu_frontend/screens/uploadScreen.dart';

void main() => runApp(YouChuApp());

class YouChuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouChu',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      // home: LoginScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/route': (context) => RoutingScreen(),
        '/home': (context) => HomeScreen(),
        '/search': (context) => SearchScreen(),
        '/upload': (context) => UploadScreen(),
        '/notification': (context) => NotificationScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
