part of 'menu_bloc.dart';

abstract class MenuState extends Equatable {
  const MenuState();
}

class MenuInitial extends MenuState {
  List<bool> listButton ;
  int index ;
   MenuInitial({required this.listButton, required this.index}) : super();
  @override
  List<Object> get props => [listButton, index];
}


