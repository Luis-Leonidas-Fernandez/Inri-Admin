part of 'menu_bloc.dart';

class MenuState extends Equatable {

  final bool? isOpen;
  final AnimationController? controller;  

  const MenuState({
    this.isOpen = false,
    this.controller
  });

  MenuState copyWith({       
    bool? isOpen,
    AnimationController? controller
  }) => MenuState(
    isOpen: isOpen ?? this.isOpen,
    controller: controller ?? this.controller
  ); 

  
  @override
  List<Object?> get props => [ isOpen, controller];
}

class ControllerInitialState extends MenuState {
  const ControllerInitialState(): super( isOpen:  false, controller: null );
}

