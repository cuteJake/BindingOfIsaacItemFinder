import 'package:bindingofisaacitemfinderapp/onboarding/presentation/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'character_selection/presentation/pages/character_selection_screen.dart';
import 'item_menu/presentation/pages/item_menu.dart';
import 'onboarding/presentation/pages/main_menu.dart';

const String backButtonSvg = '''
<svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M14 16H12V14H10H8V12H6H4V10H2H0V8V6H2V4H4V2H6H8V0H10H12H14V2H12V4H10H8V6H6H4V8H6H8V10H10H12V12H14H16V14V16H14Z" fill="#24180E"/>
</svg>
''';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        actionIconTheme: ActionIconThemeData(
          backButtonIconBuilder: (BuildContext context) => IconButton(
            onPressed: () => Navigator.maybePop(context),
            icon: SvgPicture.string(backButtonSvg),
          ),
        ),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const MainPage(),
        '/mainmenu': (context) => const MainMenu(),
        '/mainmenu/itemmenu': (context) => const ItemMenu(),
        '/mainmenu/charmenu': (context) => const CharMenu(),
        // '/mainmenu/camera':(context) => const CameraMenu(),
      },
    );
  }
}
