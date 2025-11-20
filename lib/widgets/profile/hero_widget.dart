import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'hi, im',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 4),

          const Text(
            'Kassem  Hojeige 🙋‍♂️',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),
          Row(
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: Colors.black, width: 1),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,  
                    vertical: 8,      
                  ),
                  minimumSize: const Size(0, 36), 
                ),
                onPressed: () { Navigator.pushNamed(context, '/contact'); },
                child: const Text(
                  'Contacta conmigo',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,     
                  ),
                ),
              ),

              const SizedBox(width: 12),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 8,
                  ),
                  minimumSize: const Size(0, 36),
                ),
                onPressed: () { Navigator.pushNamed(context, '/hobbies'); },
                child: const Text(
                  'Más sobre mi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 25),
                    Row(
            children: [
              Image.asset(
                'assets/github.png',
                width: 32,
                height: 32,
              ),
              const SizedBox(width: 16),
              Image.asset(
                'assets/instagram.png',
                width: 34,
                height: 34,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
