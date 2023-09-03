

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Page/HomePage.dart';
import '../Page/WelcomePage.dart';
import '../ressources/mycolors.dart';
import '../service/menu/menu_bloc.dart';
import '../service/routing_bloc.dart';

class Menu extends StatelessWidget{

  var selectedItem=[
    true,
    false,
    false,
    false,
    false

  ];
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    // TODO: implement build
    return Container(
        width: screenWidth * 0.85,
        height: 70,
        decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0xfff2efef),
                offset: Offset(0, 10),

              ),


              BoxShadow(
                color: Color(0xffF5F5F5),
                offset: Offset(-10, 5),

              ),

              BoxShadow(
                color: Color(0xffF5F5F5),
                offset: Offset(10, 5),

              ),
              BoxShadow(
                color: Color(0xffd1d1cd).withOpacity(0.4),
                offset: Offset(0, -5),

              ),
            ]
        ),
        child: BlocBuilder<MenuBloc, MenuState>(
  builder: (context, state) {
    if (state is MenuInitial) {
      return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                  context.read<MenuBloc>().add(MenuChanged( listButton: selectedItem, index: 0));
                  context.read<RoutingBloc>().add(HomePageRouting());
                  },
                  icon: Icon(Icons.home,
                    color: state.listButton[0] ? MyColors.primary : MyColors.black,
                  )),
              IconButton(
                  onPressed: () {
                    context.read<MenuBloc>().add(MenuChanged( listButton: state.listButton, index: 1));

                  }, icon: Icon(Icons.wallet_rounded,
                    color: state.listButton[1] ? MyColors.primary : MyColors.black,)),
              Container(
                  width: 55,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                      onPressed: () {
                        context.read<MenuBloc>().add(MenuChanged( listButton: selectedItem, index: 2));

                      },
                      icon: Icon(Icons.document_scanner_sharp,
                        color: state.listButton[2] ? MyColors.primary : MyColors.black,))),
              IconButton(
                  onPressed: () {
                    context.read<MenuBloc>().add(MenuChanged( listButton: selectedItem, index: 3));
                    context.read<RoutingBloc>().add(DashboardRouting());

                  },
                  icon: Icon(Icons.pie_chart_rounded,
                    color: state.listButton[3] ? MyColors.primary : MyColors.black,)),
              IconButton(
                  onPressed: () {
                    context.read<MenuBloc>().add(MenuChanged( listButton: selectedItem, index: 4));

                  },
                  icon: Icon(Icons.person,
                    color: state.listButton[4] ? MyColors.primary : MyColors.black,)),
            ]);
    }
    else
      return Container();
  },
)

      // BottomAppBar(
      //   shape: const CircularNotchedRectangle(),
      //   color: MyColors.primary,
      //   child: SizedBox(
      //     width: screenWidth,
      //     height: 70,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         IconButton(onPressed: (){
      //           Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()));
      //         }, icon: Icon(Icons.home)),
      //         IconButton(onPressed: (){
      //           Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
      //         }, icon: Icon(Icons.person))
      //
      //
      //       ]
      //     )
      //   )
      // ),
    );
  }

}