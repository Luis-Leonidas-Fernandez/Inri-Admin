import 'package:flutter/material.dart';


class ButtonNuevaCuenta extends StatefulWidget {

  final String text;
  final Function? onPressed;
  
  const ButtonNuevaCuenta({ 
    Key? key,
    required this.text,
    this.onPressed}) : super(key: key);

  @override
  State<ButtonNuevaCuenta> createState() => _ButtonNuevaCuentaState();
}

class _ButtonNuevaCuentaState extends State<ButtonNuevaCuenta> {
  
   bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      
        if(widget.onPressed != null) widget.onPressed!();

      },
       child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => isHover= false ),
        onExit: (event) => setState(() => isHover= true),
        child: Container(
          margin: const EdgeInsets.symmetric( horizontal: 10, vertical: 5 ),
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[400],
              decoration: isHover ? TextDecoration.underline : TextDecoration.none

        ),  
      ),
      
    )
   ) 
   );
  }
}