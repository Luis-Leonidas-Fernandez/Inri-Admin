part of 'auth_bloc.dart';


class AuthState extends Equatable {
  
final bool? authenticando;
final Admin? admin;

  const AuthState({
  this.authenticando = false,   
  this.admin, 
});

 AuthState copyWith({   
    Admin? admin,
    bool? autenticando
  }) => AuthState(    
    authenticando: authenticando?? authenticando,
    admin: admin?? admin
  );

  @override
  List<Object?> get props => [ authenticando, admin ];


}

class UserSessionInitialState extends AuthState {
  const UserSessionInitialState(): super( admin:  null, authenticando: false );
}


