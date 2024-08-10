import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorDialog extends StatefulWidget {
  const ErrorDialog({super.key});

  @override
  State<ErrorDialog> createState() => _ErrorDialogState();
}

class _ErrorDialogState extends State<ErrorDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
                backgroundColor: Colors.red[800],
                title: const Text('Error en el Registro ir a Home', style: TextStyle(color: Colors.white),),
                
                actions: [

                  ElevatedButton(
                    
                    onPressed: () => GoRouter.of(context).push('/dashboard')
                    , 
                    child: const Icon(
                      Icons.arrow_circle_right_sharp,
                      size: 50,
                      ) 
                    )
                  
                ],
                );
  }
}