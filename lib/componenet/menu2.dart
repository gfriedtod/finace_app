import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ressources/mycolors.dart';
import '../service/menu/menu_bloc.dart';

class Menu2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    bool DarkMode = false;
 var    listButton =[true, false];
    // TODO: implement build
    return BlocProvider(
      create: (context) => MenuBloc(listButton: [true, false]),
      child: BlocBuilder<MenuBloc, MenuState>(
        builder: (context, state) {
          if (state is MenuInitial) {
            return Container(
              width: screenWidth * 0.85,
              height: 60,
              decoration: BoxDecoration(
                color: (DarkMode) ? Color(0xff333333) : Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(60),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: LayoutBuilder(builder: (context, constraints) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: constraints.maxWidth*0.5,
                          height: 50,


                          child: MaterialButton(
                              color:(state.listButton[0])? MyColors.black :null,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              onPressed: () {context.read<MenuBloc>().add(MenuChanged(listButton: listButton, index: 0));},

                              child: Text(
                                'Income',
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: (DarkMode)
                                      ? MyColors.white
                                      : (state.listButton[0])
                                          ? MyColors.white
                                          : Color(0xff333333),
                                ),
                              ))),
                      SizedBox(
                          width: constraints.maxWidth*0.5,
                          height: 50,


                          child: MaterialButton(
                              color:(state.listButton[1])? MyColors.black :null,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              onPressed: () {context.read<MenuBloc>().add(MenuChanged(listButton: listButton, index: 1));},
                              child: Text(
                                'Expenses',
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: (DarkMode)
                                      ? MyColors.white
                                      : (state.listButton[1])
                                      ? MyColors.white
                                      : Color(0xff333333),
                                ),
                              )))
                    ],
                  );
                }),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
