import 'package:dashborad/service/storage_service.dart';
import 'package:dio/dio.dart';


class ApiConfig {


  static final  Dio _dio = Dio();

  static void configureDio(){

    _dio.options.baseUrl = 'http://10.0.2.2:3000/api';
    _dio.options.contentType = Headers.jsonContentType;
    _dio.options.responseType = ResponseType.json;
    _dio.options.validateStatus = (_) => true; 
    _dio.options.headers = {     
      'x-token': StorageService.prefs.getString('token') ?? '',   
           
    };    

  }

  //IMPUT POST
  
   static Future post(String path, Map<String, dynamic> data) async {   

    try {

      final Response resp = await _dio.post(path, data: data);     

      
       return resp.data;
        
      

    } catch (e) {     
             
      throw ('Error en el POST');
    }
  }


  static Future get(String path) async {   

    try {

      final resp = await _dio.get(path);     
      
      //final viajes = resp.data;
      //final json = jsonEncode(viajes);
      // ignore: avoid_print
      //print("RESPUESTA OK ${resp.data.toString()}");
       
       return resp.data;
        
      

    } catch (e) {   

      // ignore: avoid_print
      print("ERROR");  
             
      throw ('Error en el GET');
    }
  }
   
  

  

}