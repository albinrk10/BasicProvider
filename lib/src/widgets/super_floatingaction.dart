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
          child:  Icon(Icons.add),
          onPressed: () {
          heroesInfo.heroe = 'Ironman';
          villanosInfo.villano = 'Mandarin';
        },
        backgroundColor: Colors.red,
        ),
          const SizedBox(height: 10.0,),
         FloatingActionButton(
            child: Icon(Icons.remove_circle_outlined),
          onPressed: () {
          heroesInfo.heroe = 'Capitan America';
          villanosInfo.villano = 'Red Skull';
        },
        backgroundColor: Colors.blue,
        ),
      ],
    );
  }
}