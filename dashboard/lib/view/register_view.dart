import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dashborad/constants/constants.dart';
import 'package:dashborad/view/register.dart';
import 'package:flutter/material.dart';


class RegisterView extends StatelessWidget {

  final Widget child;
  const RegisterView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;
      
    return Container(
      color: Colors.transparent,
      height: size.height,
      width: size.width,
      child: Row( 

        children: [

           _Welcome(),
           //
           //
           Container(
           width: 400,
           height: double.infinity,
           color: Colors.black,
           child: const Column(
            children: [

            SizedBox(height: 180),
            
            
            Expanded(child: RegisterScreen()), 
            
              
            
            ],
           ),
           ),          
           
          

           

         
        ],
      )

    );
  }
}

class _Welcome extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [ Color(0xFF2F1B6D), Color(0xFF673AB7)]
                )
              ),
        padding: const EdgeInsets.symmetric(horizontal: 20),  
        constraints: const BoxConstraints(maxWidth: 400),
        child: Column(                      
          children: [

            const SizedBox(height: 80),

            FittedBox(
              fit: BoxFit.contain,
              child: Text('BIENVENIDO A INRI REMISES', style: h4)
              ),

            const SizedBox(height: 5), 
            
            AnimatedTextKit(            
              animatedTexts: [       
                           
                TypewriterAnimatedText('SERVICIO DE TRANSPORTE ONLINE', textStyle: h3, cursor: '_',
                 speed: const Duration(milliseconds: 55)
               ),
              ],
              ),
        
        const SizedBox(height: 150),

        _ImageProfile(),

        const SizedBox(height: 80),
          
       
          ],
        ),
      ), 
    );
  }

}

class _ImageProfile extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {   
   
    return Expanded(
      
      child: Align(
         alignment: const Alignment( 0.1,-1.5),
        child: Container(  
               height: 500,
               width: 500,
               color: Colors.transparent,  
                  child: const Center(          
                    child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: Image(
                    image: AssetImage('assets/inri.png'),
                    ),
                    ),
                  ),
            ),
      ),
    );
  }  
  

}


