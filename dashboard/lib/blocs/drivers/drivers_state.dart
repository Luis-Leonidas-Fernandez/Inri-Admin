part of 'drivers_bloc.dart';


class DriversState extends Equatable{

  final DriversModel ? driversModel; 

  const  DriversState({
    
  this.driversModel,
  

});

 DriversState copyWith({
   
  DriversModel? driversModel,
 
})
=>  DriversState(
    
  driversModel: driversModel?? this.driversModel,
 
);


  
  @override
  List<Object?> get props => [driversModel];
}

class DriverInitialState extends DriversState {
  const DriverInitialState(): super( driversModel: null );
}
