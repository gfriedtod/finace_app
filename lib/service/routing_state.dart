part of 'routing_bloc.dart';

@immutable
abstract class RoutingState {
  late Widget page;
  RoutingState({required this.page});
}

class RoutingInitial extends RoutingState {

  RoutingInitial() : super(page: HomePage());

}



class DashboardState extends RoutingState {

  DashboardState() : super(page: DashboardPage());

}

