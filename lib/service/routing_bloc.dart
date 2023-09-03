import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:finace_app/Page/HomePage.dart';
import 'package:finace_app/Page/WelcomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import '../Page/dashboard_page.dart';

part 'routing_event.dart';
part 'routing_state.dart';

class RoutingBloc extends Bloc<RoutingEvent, RoutingState> {
  RoutingBloc() : super(RoutingInitial()) {

    on<HomePageRouting>((event, emit) => emit(RoutingInitial()));
    on<DashboardRouting>((event, emit) => emit(DashboardState()));
  }
}
