import 'package:flutter/material.dart';

import 'halofoil.dart';
import 'liquid_glass_animation/GlassShowcaseScreen.dart';

class EnterPage extends StatefulWidget {
  const EnterPage({super.key});

  @override
  State<EnterPage> createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

        ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HoloExampleScreen(),));
        }, child: Text("HaloFoil Animation")),


          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => GlassShowcaseScreen(),));
          }, child: Text("Liquid glass Animation"))


        ],),
    );
  }
}
