

import 'package:flutter/material.dart';

class SideMenuProvider {

  
  static late AnimationController menuController;  


  static Animation<double> movement = Tween<double>(begin: -220, end:  0)
  .animate(CurvedAnimation(parent: menuController, curve: Curves.easeInOut));


  static Animation<double> opacity = Tween<double>(begin: 0, end:  1)
  .animate(CurvedAnimation(parent: menuController, curve: Curves.easeInOut));



  static void openMenuCtl(){   
    menuController.forward();
  }

  static void closeMenuCtl(){   
    menuController.reverse();
  }

  /* static void toggleMenu(){
    ( isOpen )
    ? menuController.reverse()
    : menuController.forward(); 
  } */


}