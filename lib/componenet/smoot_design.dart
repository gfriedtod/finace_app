import 'package:finace_app/ressources/mycolors.dart';
import 'package:flutter/material.dart';

class SmootDesign extends StatelessWidget {
  double value ;
   SmootDesign({super.key , required this.value});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width:value,
      height:value,
      child: LayoutBuilder(
        builder: (context,constraints) {
          {
            return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: constraints.maxWidth *0.461538462,
                              height: constraints.maxWidth *0.461538462,

                              decoration: BoxDecoration(
                                color: MyColors.primary,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(constraints.maxWidth*0.230769231),
                                    bottomLeft: Radius.circular(constraints.maxWidth*0.230769231),
                                    topRight: Radius.circular(constraints.maxWidth*0.230769231)),
                              ),
                            ),
                            SizedBox(height: constraints.maxWidth*0.076923077,),
                            Container(
                              width: constraints.maxWidth*0.230769231,
                              height: constraints.maxWidth*0.230769231,
                              decoration: BoxDecoration(
                                color: MyColors.black,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(constraints.maxWidth*0.230769231),
                                    bottomLeft: Radius.circular(constraints.maxWidth*0.230769231),
                                    bottomRight: Radius.circular(constraints.maxWidth*0.230769231)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: constraints.maxWidth*0.076923077,),
                        SizedBox(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: constraints.maxWidth*0.307692308,
                                height: constraints.maxWidth*0.307692308,
                                decoration: BoxDecoration(
                                  color: MyColors.secondary,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(constraints.maxWidth*0.230769231),
                                      bottomRight: Radius.circular(constraints.maxWidth*0.230769231),
                                      topRight: Radius.circular(constraints.maxWidth*0.230769231)),
                                ),

                              ),
                              SizedBox(
                                height:constraints.maxWidth*0.115384615,
                              )

                            ],
                          ),
                        )
                      ]
                  ),


                ]
            );
          }
        }),
    );
  }
}