import 'package:dashborad/api/config.dart';
import 'package:dashborad/models/admin.dart';
import 'package:dashborad/models/login.dart';
import 'package:dashborad/service/storage_service.dart';



class AuthService {


  Admin? admin; 

  register(String nombre, String email, String password ) async{
   

    final data = {'nombre': nombre,'email': email,'password': password};     
    const String registerPath = '/loginadmin/new'; 
        
    final respuesta = await ApiConfig.post(registerPath, data); 

    final res = respuesta.toString();

    // ignore: avoid_print
    print("Respuesta from Server : $res");           
     
    final authResponse = LoginResponse.fromMap(respuesta);
    admin = authResponse.admin;     

    StorageService.prefs.setString('token', authResponse.token);
    StorageService.prefs.setString('uid', authResponse.admin.uid);    
    StorageService.prefs.setString('base', authResponse.admin.base.toString());

    ApiConfig.configureDio();
    

    return admin;  

  }



  loginUser(email, password) async {

    final object = {'email': email,'password': password};
    const String loginPath = '/loginadmin/'; 

    final respuesta = await ApiConfig.post(loginPath, object); 

    
    final authResponse = LoginResponse.fromMap(respuesta);
    admin = authResponse.admin; 

    StorageService.prefs.setString('token', authResponse.token);
    StorageService.prefs.setString('uid', authResponse.admin.uid);    
    StorageService.prefs.setString('base', authResponse.admin.base.toString());
   
    ApiConfig.configureDio();    

    return admin;  

  }
}

