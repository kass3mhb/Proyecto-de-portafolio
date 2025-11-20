import 'package:flutter/material.dart';
import 'package:portafolio_prog/widgets/widgets.dart';

class HobbiesScreen extends StatelessWidget {
  const HobbiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Volver'),
        backgroundColor: Colors.transparent,
        elevation: 0,                         
        surfaceTintColor: Colors.transparent, 
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: const [
                Text(
                  '+ sobre mi',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Kassem Koheije',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),

          const FullCardWidget(
            title: 'Mi comida favorita sin dudarlo el sushi',
            icon: Icons.restaurant,
            backgroundAsset: 'assets/sushi.png',
          ),

          const FullCardWidget(
            title: 'Mi serie favorita Rick y Morty goat',
            icon: Icons.movie,
            backgroundAsset: 'assets/rickymorty.png',
          ),
          const FullCardWidget(
            title: 'Banda favorita Slipknot',
            icon: Icons.music_note,
            backgroundAsset: 'assets/slipknot.png',
          ),

          const FullCardWidget(
            title: 'Animal favorito: Jaguar',
            icon: Icons.pets,
            backgroundAsset: 'assets/jaguar.png',
          ),

          const FullCardWidget(
            title: 'Mi saga favorita de videojuegos la Saga de Metro',
            icon: Icons.videogame_asset,
            backgroundAsset: 'assets/metro.png',
          ),
        ],
      ),
    );
  }
}
