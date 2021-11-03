import 'package:flutter/material.dart';

import 'screens/miPantalla.dart';
import 'screens/segundaPantalla.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'primerPantalla',
      routes: {
        'primerPantalla' : (BuildContext context) => MiNuevaPage(),
        'segundaPantalla': (BuildContext context) => SecondScreen(),
      },
    );
  }
}