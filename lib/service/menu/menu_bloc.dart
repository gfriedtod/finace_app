import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';



part 'menu_event.dart';
part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  List<bool> listButton ;
  MenuBloc({required this.listButton}) : super(MenuInitial(listButton: listButton ,  index: 0)) {
    on<MenuChanged>((event, emit) {
      for (int i = 0; i < event.listButton.length; i++) {
        listButton[i] = false;
        print(event.listButton[i]);
      }
      listButton[event.index] = true;
      print(listButton);

      emit(MenuInitial(listButton :listButton, index: event.index));
    });

    print('object');
  }
      // TODO: implement event handler

  }

