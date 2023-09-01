import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../componenet/ouatlet.dart';
import '../componenet/smoot_design.dart';
import '../componenet/star.dart';
import '../ressources/mycolors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                  left: width * 0.6,
                  bottom: height * 0.85,
                  child: SmootDesign(
                    value: 200,
                  )),

              Positioned(
                  left: width * -0.1,
                  bottom: height * 0.47,
                  child: Container(
                    height: 65,
                    width: 65,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        //color: MyColors.black,
                        border: Border.all(
                            color:  MyColors.black,
                            width: 10
                        )
                    ) ,
                  )
              ),
              Positioned(
                  top: 20,
                  left: width*0.1,
                  child: Star(
                    value: 70,
                  )),

              Positioned(
                  left: width * 0.6,
                  bottom: height * 0.85,
                  child: SmootDesign(
                    value: 200,
                  )),
              SizedBox(
                width: width * 0.84,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Oatlet(),
                    Text('Easy ways to',
                        style: GoogleFonts.roboto(
                          color: MyColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 48,
                        )),
                    Text('manage your',
                        style: GoogleFonts.roboto(
                          color: MyColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 48,
                        )),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('finances',
                            style: GoogleFonts.roboto(
                              color: MyColors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 48,
                            )),
                        SizedBox(width: 40,),
                        Star(value: 40)
                      ],
                    ),

                  ],
                ),
              ),
              Positioned(
                top: height * 0.90,
                child: SizedBox(
                  height: 60,

                  width: width * 0.84,
                  child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(330),
                          )
                      ),
                      color: MyColors.black,
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Get Started',
                            style: GoogleFonts.roboto(
                              color: MyColors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),

                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: MyColors.white,

                          )
                        ],
                      )
                  ),
                ),
              )
            ],
          ),
        ),


      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}