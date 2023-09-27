import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/src/pages/home_page.dart';

import 'package:providers/src/providers/heroesinfo.dart';
import 'package:providers/src/providers/villanos.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return ChangeNotifierProvider(
  //     create: (_) => HeroesInfo(),
  //     child: MaterialApp(
  //       title: 'Material App',
  //       initialRoute: 'home',
  //       routes: {
  //         'home': (_) => const HomePage(),
          
  //       },
  //     ),
  //   );
  // }

   @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HeroesInfo()),
        ChangeNotifierProvider(create: (_) => VillanosInfo()),
      ],
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (_) => const HomePage(),
          
        },
      ),
    );
  }
}
