
class BaseModel {

    bool? ok;
    String ?base;
    List<double>? ubicacion;
    String? adminId;
    String? zonaName;
    List<dynamic>? idDriver;
    int? viajes;
    String? id;

    BaseModel({

        this.ok,
        this.base,
        this.ubicacion,
        this.adminId,
        this.zonaName,
        this.idDriver,
        this.viajes,
        this.id,
    });


 

    factory BaseModel.fromJson(Map<String, dynamic> json) => BaseModel(
        base: json["base"] ?? "",
        ubicacion: json["ubicacion"] == null ? null : List<double>.from(json["ubicacion"].map((x) => x.toDouble())),
        adminId: json["adminId"] ?? "",
        zonaName: json["zonaName"] ?? "",
        idDriver: json["idDriver"] == null ? null : List<dynamic>.from(json["idDriver"].map((x) => x)),
        viajes: json["viajes"]?? 0,
        id: json["_id"]?? "",
    );

    Map<String, dynamic> toMap() => {
        "base": base,
        "ubicacion": ubicacion == null? null : List<dynamic>.from(ubicacion!.map((x) => x)),
        "adminId": adminId,
        "zonaName": zonaName,
        "idDriver": idDriver == null ? null : List<dynamic>.from(idDriver!.map((x) => x)),
        "viajes": viajes,
        "_id": id,
    };
}

