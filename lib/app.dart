import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

class ShrineApp extends StatefulWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  State<ShrineApp> createState() => _ShrineAppState();
}

class _ShrineAppState extends State<ShrineApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      debugShowCheckedModeBanner: false,
      // TODO: Change home: to a Backdrop with a HomePage frontLayer (104)
      home: const HomePage(),
      // TODO: Make currentCategory field take _currentCategory (104)
      // TODO: Pass _currentCategory for frontLayer (104)
      // TODO: Change backLayer field value to CategoryMenuPage (104)
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
      // TODO: Add a theme (103)
    );
  }

  Route<dynamic>? _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => const LoginPage(),
      fullscreenDialog: true,
    );
  }
}
