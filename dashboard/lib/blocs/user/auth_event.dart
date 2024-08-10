part of 'auth_bloc.dart';

class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

 class OnAddUserSessionEvent extends AuthEvent{ 
  
  final Admin? admin;
 
 const OnAddUserSessionEvent(this.admin);
} 

class OnAuthenticatingEvent extends AuthEvent{ 
   
 const OnAuthenticatingEvent();
} 

class OnClearUserSessionEvent extends AuthEvent{ 
   
 const  OnClearUserSessionEvent();
}

