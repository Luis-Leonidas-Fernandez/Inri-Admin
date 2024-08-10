// To parse this JSON data, do
//
//     final admin = adminFromJson(jsonString);

import 'dart:convert';

Admin adminFromJson(String str) => Admin.fromMap(json.decode(str));

String usuarioToJson(Admin data) => json.encode(data.toJson());

class Admin {
    Admin({
        
        required this.nombre,
        required this.email,
        required this.uid,
        required this.base
        
    });

    
    String nombre;
    String email;
    String uid;
    int base;
    


    factory Admin.fromMap(Map<String, dynamic> json) => Admin(
       
        nombre: json["nombre"],
        email: json["email"],
        uid: json["uid"],
        base: json["base"]        

    );


    factory Admin.fromJson(Map<String, dynamic> json) => Admin(
       
        nombre: json["nombre"],
        email: json["email"],
        uid: json["uid"],
        base: json["base"]        

    );

    Map<String, dynamic> toJson() => {
       
        "nombre": nombre,
        "email": email,
        "uid": uid,
        "base": base
      
    };
}
