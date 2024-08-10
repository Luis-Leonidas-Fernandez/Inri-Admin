part of 'menu_bloc.dart';

class MenuEvent extends Equatable {
  const MenuEvent();

  @override
  List<Object> get props => [];
}

class OnIsOpenSideBarEvent extends MenuEvent {
  const OnIsOpenSideBarEvent();
}

class OnIsCloseSideBarEvent extends MenuEvent {
  const OnIsCloseSideBarEvent();
}


