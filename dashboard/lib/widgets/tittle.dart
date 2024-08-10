

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tittle extends StatelessWidget {
  
  final Size size;
  const Tittle({super.key, required this.size});


  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric( horizontal: 2 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        

          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'INICIAR SESION',
                style: GoogleFonts.montserratAlternates(
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
           Center(
             child: Image(
                    image: const AssetImage('assets/remis.png'),
                    width: size.width < 1100 ? 200 : 300,
                    ),
           ),
        ],
      ),
    );
  }
}