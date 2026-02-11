import 'package:flutter/material.dart';
import 'package:liquid_glass_renderer/experimental.dart';
import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';

class GlassShowcaseScreen extends StatefulWidget {
  const GlassShowcaseScreen({super.key});

  @override
  State<GlassShowcaseScreen> createState() => _GlassShowcaseScreenState();
}

class _GlassShowcaseScreenState extends State<GlassShowcaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          // 1. Your background content goes here
          MyBackgroundContent(),



//          2. Create a layer for liquid glass effects
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: LiquidGlassLayer(

              settings: const LiquidGlassSettings(
                thickness: 20,
                blur: 1,
                glassColor: Color(0x33FFFFFF),
              ),
              //
              // settings: const LiquidGlassSettings(
              //   thickness: 10,
              //   glassColor: Color(0x1AFFFFFF),
              //   lightIntensity: 1.5,
              //    saturation: 1.2,
              // ),
              // 3. Add your LiquidGlass widgets here
              child: LiquidGlass(


                // shape: LiquidRoundedSuperellipse(borderRadius: 90),
                shape: LiquidRoundedSuperellipse(borderRadius: 20,),
                child: const SizedBox.square(dimension: 100),
              ),
            ),
          ),

          // Center(
          //   child: LiquidGlassLayer(
          //     settings: const LiquidGlassSettings(
          //       thickness: 20,
          //       blur: 10,
          //       glassColor: Color(0x33FFFFFF),
          //     ),
          //     child: LiquidGlass(
          //       shape: LiquidRoundedSuperellipse(
          //         borderRadius: 50,
          //       ),
          //       child: const SizedBox(
          //         height: 40,
          //         width: 40,
          //         child: Center(
          //           child: FlutterLogo(size: 100),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),


          Padding(
            padding: const EdgeInsets.only(bottom: 300),
            child: LiquidGlassLayer(
              child: LiquidGlass(
                shape: LiquidRoundedSuperellipse(
                  borderRadius: 20,
                ),
                child: GlassGlow(
                  glowColor: Colors.white24,
                  glowRadius: 1.0,
                  child: const SizedBox(
                    height: 100,
                    width: 100,
                    child: Center(child: Text('Touch Me')),
                  ),
                ),
              ),
            ),
          ),

          LiquidStretch(
            stretch: 0.5,
            interactionScale: 1.05,
            child: LiquidGlass(
              shape: LiquidRoundedSuperellipse(
                borderRadius: 20,
              ),
              child: const SizedBox(
                height: 100,
                width: 100,
                child: Center(child: Text('Stretchy',style: TextStyle(fontSize: 30,color: Colors.red),)),
              ),
            ),
          ),


          Center(
            child: Glassify(
              settings: const LiquidGlassSettings(
                thickness: 5,
                glassColor: Color(0x33FFFFFF),
              ),
              child: const Text(
                'Mohnish',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          )

        ],
      ),

    );
  }

  Widget MyBackgroundContent(){
    return Column(
      children: [
        Image.asset("assets/images/background_image.jpg")
      ],
    );
  }
}
