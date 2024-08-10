import 'package:flutter/material.dart';


class DesktopScaffold extends StatelessWidget {

 final Widget child; 

 const DesktopScaffold({Key? key, required this.child }) : super(key: key);



  @override
  Widget build(BuildContext context) { 

    
   
    return Scaffold(        
      backgroundColor: Colors.transparent,
      
      body: ListView(
        scrollDirection: Axis.vertical,
        children:   [

           
           
          Container(child: child)     

         
        ],
        
         
         
                  
       ),
      );
     
    
   
  }
}


