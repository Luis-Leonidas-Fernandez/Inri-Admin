import 'package:dashborad/models/admin.dart';
import 'package:dashborad/service/auth_service.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';


part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {

  AuthService authService;  

  AuthBloc({required this.authService}) : super(const AuthState(authenticando: false, admin: null)) {

    on<OnAuthenticatingEvent>((event, emit) => emit(state.copyWith(autenticando: true)));
    on<OnClearUserSessionEvent>((event, emit) => emit(const UserSessionInitialState()));
    on<OnAddUserSessionEvent>((event, emit) { 
    
    
    emit(state.copyWith(    
      admin: event.admin,
      autenticando: true,    
    ));
  });


  }  
  
 

   @override
  AuthState? fromJson(Map<String, dynamic> json) {
    
     try {
      
      final usuario  = Admin.fromJson(json);
            
      final authUserState = AuthState( admin: usuario);         
      
      return authUserState;  

      
    } catch (e) {

      
      return null;
    }
  }
  
  @override
  Map<String, dynamic>? toJson(AuthState state) {
    

     if(state.admin != null){
      final data = state.admin!.toJson();      
      
     
      return data;
     }else{
      
      
      return null;
     }     
  }  
  

   Future<bool> initRegister(String nombre, String email, String password) async {

    
    final admin = await authService.register(nombre, email, password);   
       
    
     if(admin is Admin){
    
    add(const OnAuthenticatingEvent());
    add(OnAddUserSessionEvent(admin));
  

      return true;
     }else{

      
      return false;
     }    

  }


  Future<bool> initLogin(String email, String password) async {

    
    final usuario = await authService.loginUser(email, password); 
       
    
     if(usuario is Admin){
      
      add(OnAddUserSessionEvent(usuario));     

      return true;
     }else{     
      return false;
    }    
}


}