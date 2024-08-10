

import 'package:flutter/material.dart';

class ContentButtonInvoice extends StatelessWidget {
  const ContentButtonInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
             
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
               child: Column(
                  
                 children: [
               
                  Row(
                  
                  children: [
                 
                    Container(
                      color: Colors.transparent,
                      width: 100,
                      height: 50,
                      child: const Center(child: Text("ITEMS", style: TextStyle(color: Colors.white, fontSize: 17),)),
                    ),
                 
                    Expanded(child: Container(color: Colors.white,)),
                     
                    Container(
                      color: Colors.transparent,
                        width: 100,
                        height: 50,
                        child: const Center(child: Text("PRECIO", style: TextStyle(color: Colors.white, fontSize: 17),)),
                    ) 
                     
                 
                  ],
                 ),


                 Row(
                  
                  children: [
                 
                    Container(
                      color: Colors.transparent,
                      width: 100,
                      height: 50,
                      child: const Center(child: Text("VIAJES", style: TextStyle(color: Colors.white, fontSize: 15),)),
                    ),
                 
                    Expanded(child: Container(color: Colors.white,)),
                     
                    Container(
                      color: Colors.transparent,
                        width: 100,
                        height: 50,
                        child: const Center(child: Text("\$25.000", style: TextStyle(color: Colors.white, fontSize: 15),)),
                    ) 
                     
                 
                  ],
                 ),



                  Row(
                  
                  children: [
                                   
                    Container(
                      color: Colors.transparent,
                      width: 100,
                      height: 50,
                      child: const Center(child: Text("DESCUENTO", style: TextStyle(color: Colors.white, fontSize: 15),)),
                    ),
                                   
                    Expanded(child: Container(color: Colors.red,)),
                     
                    Container(
                      color: Colors.transparent,
                        width: 100,
                        height: 50,
                        child: const Center(child: Text("\$10.000", style: TextStyle(color: Colors.white, fontSize: 15),)),
                    ) 
                     
                                   
                  ],
                  ),


                  Row(
                  
                  children: [
                                   
                    Container(
                      color: Colors.transparent,
                      width: 100,
                      height: 50,
                      child: const Center(child: Text("SOPORTE", style: TextStyle(color: Colors.white, fontSize: 15),)),
                    ),
                                   
                    Expanded(child: Container(color: Colors.red,)),
                     
                    Container(
                      color: Colors.transparent,
                        width: 100,
                        height: 50,
                        child: const Center(child: Text("\$20.000", style: TextStyle(color: Colors.white, fontSize: 15),)),
                    ) 
                     
                                   
                  ],
                 ),

                 const SizedBox(height: 10),

                 Container(
                  color: Colors.white,
                  width: 550,
                  height: 1,
                 )
                 ] 
               ),
             ),
              

               

      ],
    );
  }
}

