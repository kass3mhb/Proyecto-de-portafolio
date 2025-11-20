import 'package:flutter/material.dart';

class FullCardWidget extends StatelessWidget { // diseñado asi para que funcione por parametros, parecido a como se hizo con los modelos de las rutas
  final String title;
  final IconData icon;
  final String backgroundAsset;

  const FullCardWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.backgroundAsset,
  }); 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundAsset),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.55),
            BlendMode.darken,
          ),
        ),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),

          const SizedBox(height: 10),

          Icon(
            icon,
            color: Colors.white,
            size: 32,
          ),
        ],
      ),
    );
  }
}
