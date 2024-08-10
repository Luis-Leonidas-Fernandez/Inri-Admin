import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'menu_event.dart';
part 'menu_state.dart';


class MenuBloc extends Bloc<MenuEvent, MenuState> {

  MenuBloc() : super(const MenuState(isOpen: false)) {    
    
    on<OnIsOpenSideBarEvent>((event, emit) => emit(state.copyWith(isOpen: true)));
    on<OnIsCloseSideBarEvent>((event, emit) => emit(state.copyWith(isOpen: false)));

  }   

}
