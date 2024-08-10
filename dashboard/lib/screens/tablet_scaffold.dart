import 'package:flutter/material.dart';



class TabletScaffold extends StatelessWidget {


  final Widget child;
  const TabletScaffold({super.key, required this.child});
  

  @override
  Widget build(BuildContext context) {

    

    return Scaffold(        
      backgroundColor: Colors.transparent,
      
      
      body:ListView(
        scrollDirection: Axis.vertical,
        children:   [
          
       
         
        
         Container(child: child)
           
         
        ],
        
         
         
                  
      ),
    );
  }
}