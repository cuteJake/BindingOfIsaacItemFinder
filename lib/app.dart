

import 'package:bindingofisaacitemfinderapp/onboarding/presentation/pages/main_page.dart';
import 'package:flutter/material.dart';

import 'character_selection/presentation/pages/character_selection_screen.dart';
import 'item_menu/presentation/pages/item_menu.dart';
import 'onboarding/presentation/pages/main_menu.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
        ),

      initialRoute: '/home',
      routes: {
        '/home': (context) => const MainPage(),
        '/mainmenu': (context) => const MainMenu(),
        '/mainmenu/itemmenu': (context) => const ItemMenu(),
        '/mainmenu/charmenu':(context) => const CharMenu(),
     // '/mainmenu/camera':(context) => const CameraMenu(),
      },
    );
  }
}

