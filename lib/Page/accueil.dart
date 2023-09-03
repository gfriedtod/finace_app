import 'package:finace_app/Page/HomePage.dart';
import 'package:finace_app/componenet/menu.dart';
import 'package:finace_app/service/routing_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../ressources/mycolors.dart';
import 'WelcomePage.dart';

class Accueil extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Stack(alignment: Alignment.center, children: [
         BlocBuilder<RoutingBloc,RoutingState>(builder: (context, state){
           print(state);

           return state.page;
         }),
          Positioned(
            top: screenHeight * 0.89,
            child: Menu(),
          )
        ]),
      ),
    );
  }
}
