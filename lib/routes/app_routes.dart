import 'package:flutter/material.dart';
import 'package:portafolio_prog/models/home_options.dart';
import 'package:portafolio_prog/screens/screens.dart';

class AppRoutes {

  static const initialRoute = '/home';

  static final homeOptions = <HomeOptions>[
    HomeOptions(route: '/home', icon: Icons.home_filled, name: 'Inicio', screen: const HomeScreen()),
    HomeOptions(route: '/hobbies',icon: Icons.sports_esports, name: 'Hobbies',screen: const HobbiesScreen()),
    HomeOptions(route: '/contact',icon: Icons.sports_esports, name: 'Hobbies',screen: const ContactScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    '/home'    : (BuildContext context) => const HomeScreen(),
    '/hobbies' : (BuildContext context) => const HobbiesScreen(),
    '/contact' : (BuildContext context) => const ContactScreen(),
  };
}
