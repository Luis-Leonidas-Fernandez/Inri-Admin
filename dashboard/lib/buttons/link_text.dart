import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class LinkText extends StatelessWidget {

  final String text;
  const LinkText({
    Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: Colors.transparent,
      width: 125,
      height: 37,  
      margin: const EdgeInsets.symmetric(horizontal: 23, vertical: 12),
      child: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        elevation: 1,       
        onPressed: () {},
         child: Text(
          text, style: GoogleFonts.montserratAlternates(
            color: Colors.white,
             fontSize: 18)
             )
            )
           );
      
      
    
  }
}