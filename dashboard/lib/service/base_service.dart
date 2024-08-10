import 'package:dashborad/api/config.dart';
import 'package:dashborad/models/bases.dart';


class BaseService {

  late BaseModel baseSelected;


  Future createBase(BaseModel? baseSelected, String uid) async {

    
    final id   = uid;       
    final zona = baseSelected?.zonaName?? "";
    final base = baseSelected?.base ?? "";
    final ubicacion = baseSelected?.ubicacion ?? "";
    

    // ignore: avoid_print
    print("data to send: $id, $zona, $base, $ubicacion");
    final Map<String, dynamic> data = {'zona': zona, 'base': base, 'ubicacion': ubicacion};

    final String registerBasePath = '/base/new/$id'; 
        
    final respuesta = await ApiConfig.post(registerBasePath, data); 

    
    final baseResponse = BaseModel.fromJson(respuesta); 
    
    baseSelected = baseResponse;     

    ApiConfig.configureDio();

     return baseSelected;

    
  }
}