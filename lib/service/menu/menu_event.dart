part of 'menu_bloc.dart';

abstract class MenuEvent extends Equatable {
  const MenuEvent();
}

class MenuChanged extends MenuEvent {
  List<bool> listButton;
  int index;
  MenuChanged({required this.listButton, required this.index});
  @override
  List<Object> get props => [listButton, index];
}
