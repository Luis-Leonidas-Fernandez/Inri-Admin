import 'dart:async';

import 'package:dashborad/blocs/blocs.dart';
import 'package:dashborad/models/drivers.dart';
import 'package:dashborad/service/drivers_base_service.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'drivers_event.dart';
part 'drivers_state.dart';

class DriversBloc extends HydratedBloc<DriversEvent, DriversState> {

  DriversAndBaseService driverBaseService;
  AuthBloc authBloc;
  StreamSubscription<DriversModel>? myBaseStream;
  Timer? timer;

  final StreamController<DriversModel> _driverBaseController =
      StreamController.broadcast();
  Stream<DriversModel> get driverBaseStream => _driverBaseController.stream;

  DriversBloc({required this.driverBaseService, required this.authBloc})
      : super(const DriversState()) {
    //Push Events

    //clear data
    on<OnClearStateEvent>((event, emit) => emit(const DriverInitialState()));
    // get data
    on<AddOrderUserEvent>((event, emit) {
      emit(state.copyWith(
        driversModel: event.driversModel,
      ));
    });
  }

  @override
  DriversState? fromJson(Map<String, dynamic> json) {
    try {
      final data = json;

      final drivers = DriversModel.fromJson(data);

      final driversState = DriversState(driversModel: drivers);

      return driversState;
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(DriversState state) {

    if (state.driversModel?.data != null) {
      final data = state.driversModel?.toJson();

      return data;
    } else {
      return null;
    }
  }

  void getDriversAndBases() {

    timer = Timer.periodic(const Duration(seconds: 3), (_) async {

      if (authBloc.state.admin == null) return stopPeriodicTasck();

      //try {
        final resp = await driverBaseService.getDriversAndBase();
        
        // ignore: avoid_print
        //print("response driver model : $resp");

        if (resp.ok == true) {
          _driverBaseController.add(resp);
          add(AddOrderUserEvent(resp));
        }
      //} catch (e) {
        // ignore: avoid_print
        //print("ERROR IN BLOC: $e");
      //}
    });
  }

  void stopPeriodicTasck() {
    timer?.cancel();
    timer = null;
  }

  void loadingDataBase() {
    getDriversAndBases();
  }

  void stopLoadingDriverBase() {
    _driverBaseController.close();
    myBaseStream?.cancel();
  }

  @override
  Future<void> close() {
    stopPeriodicTasck();
    stopLoadingDriverBase();
    timer?.cancel();
    timer = null;
    return super.close();
  }
}
