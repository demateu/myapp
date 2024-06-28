import 'package:flutter/material.dart';

import 'package:myapp/screens/details_screen.dart';
import 'package:myapp/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {
        'home': ( _ ) => HomeScreen(),
        'details_screen': ( _ ) => DetailsScreen(),
      }
    );
  }
}