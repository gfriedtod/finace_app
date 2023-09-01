
import 'package:finace_app/componenet/smoot_design.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ressources/mycolors.dart';

class VisaCard extends StatelessWidget{
  bool darkMode= false;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Container(
      width: screenWidth*0.85,
      height: screenHeight*0.209359606,

      child: LayoutBuilder(
        builder: (context,constraints) {
          return Stack(
            children: [


              Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                child: Card(
                  margin: EdgeInsets.zero,

                  color:Color(0xff1D1D21),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Image.asset('assets/Vector.png'),
                            Image.asset('assets/sim.png'),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Available Balance',
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: (darkMode)?MyColors.black:MyColors.white
                                  ),
                                ),
                                SizedBox(
                                  width: constraints.maxWidth*0.88,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("\$8520.00" , style: GoogleFonts.roboto(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: (darkMode)?MyColors.black:MyColors.white,
                                        wordSpacing: 0.2

                                      ),),
                                      Text('EX 06/26', style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: (darkMode)?MyColors.black:MyColors.white,
                                          wordSpacing: 10
                                      )
                                      )
                                    ],
                                  ),
                                )

                              ],
                            ),

                          ]
                        )
                      ]
                    ),
                  ),
                ),
              ),
              Positioned(

                //bottom:screenWidth*0.602,
                  bottom:screenHeight*0.028 ,
                  left:screenWidth*0.29,

                  child: Opacity(opacity: 0.2,
                      child: SmootDesign(value: 200, darkMode:  true,))),


            ]
          );
        }
      ),
    );
  }

}