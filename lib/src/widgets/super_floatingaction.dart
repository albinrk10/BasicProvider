import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/heroesinfo.dart';
import '../providers/villanos.dart';

class SuperFloatingAction extends StatelessWidget {
  const SuperFloatingAction({super.key});

  @override
  Widget build(BuildContext context) {
   final heroesInfo = Provider.of<HeroesInfo>(context);
   final villanosInfo = Provider.of<VillanosInfo>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
          heroesInfo.heroe = 'Ironman';
          villanosInfo.villano = 'Mandarin';
        },
        backgroundColor: Colors.red,
          child:  const Icon(Icons.add),
        ),
          const SizedBox(height: 10.0,),
         FloatingActionButton(
            
          onPressed: () {
          heroesInfo.heroe = 'Capitan America';
          villanosInfo.villano = 'Red Skull';
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.remove_circle_outlined),
        ),
      ],
    );
  }
}