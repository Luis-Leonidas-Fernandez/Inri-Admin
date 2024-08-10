part of 'drivers_bloc.dart';


class DriversEvent extends Equatable{

  const DriversEvent();

  @override
  List<Object?> get props => [];
}


class GetDriverAndBaseUserEvent extends DriversEvent{}


class AddOrderUserEvent extends DriversEvent{

  final DriversModel driversModel;
  const AddOrderUserEvent(this.driversModel);

}
class OnClearStateEvent extends DriversEvent{
  
  const OnClearStateEvent();

}