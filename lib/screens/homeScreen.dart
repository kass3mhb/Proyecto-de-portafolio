import 'package:flutter/material.dart';
import 'package:portafolio_prog/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,                         
        surfaceTintColor: Colors.transparent, 
      ),

      body: ListView(
        children: const [
          HeroWidget(),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              children: [

                FullCardWidget(
                  title: 'Actualmente soy estudiante de la Universidad de Margarita (Unimar)',
                  icon: Icons.school,
                  backgroundAsset: 'assets/black.png',
                ),

                FullCardWidget(
                  title: 'Amante de la música rock y metal',
                  icon: Icons.music_note,
                  backgroundAsset: 'assets/slipbanner.png',
                ),

                FullCardWidget(
                  title: 'Amante de los videojuegos',
                  icon: Icons.videogame_asset,
                  backgroundAsset: 'assets/metrobanner.png',
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
