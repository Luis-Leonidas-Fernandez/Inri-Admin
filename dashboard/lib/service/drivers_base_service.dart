import 'package:dashborad/api/config.dart';
import 'package:dashborad/models/drivers.dart';
import 'package:dashborad/service/storage_service.dart';
import 'package:flutter/foundation.dart';

class DriversAndBaseService {

  late DriversModel driversModel;
  

  getDriversAndBase () async {

     
    final String? uid = StorageService.prefs.getString('uid');


    final String? base = StorageService.prefs.getString('base'); 

    if( uid == null && base == null) return;  
   
    final String baseAndDriversPath = '/base/drivers-from-admin/$uid/$base';     
    
    

    //try {

       

       final respuesta = await ApiConfig.get(baseAndDriversPath); 

       
       final data = respuesta as Map<String, dynamic>; 
       
       
       final authResponse = await compute(DriversModel.fromJson, data);      
       
       
       ApiConfig.configureDio(); 
       return authResponse;
      

    //} catch (e) {
      
      // Maneja cualquier error que ocurra durante la decodificación del JSON
    //debugPrint('Error al decodificar JSON: $e');
    //return null; // Otra acción que desees tomar en caso de error
    //}
   
    
    
  }
}