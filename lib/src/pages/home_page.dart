import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/heroesinfo.dart';
import '../widgets/super_floatingaction.dart';
import '../widgets/super_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);
    return Scaffold(
      appBar: AppBar(
        title:  Text(heroesInfo.heroe),
      ),
      body: const Center(child: SuperText()),
      floatingActionButton: const SuperFloatingAction(),
     
    );
  }
}