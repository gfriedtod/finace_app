import 'package:flutter/material.dart';

class Star extends StatelessWidget{
  double value;
  
   Star({Key? key , required this.value,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [

        Container(
        height: value-1 ,
        width: value-2,

          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(width: 0.0, color: Colors.white),

          ),
      ),

        Positioned(
            bottom: value/2,
            right: value/2,
            child: SizedBox(
              height:value,
              width: value,


                child:
                CircleAvatar(backgroundColor: Colors.white,))),
        Positioned(
            bottom: value/2,
            left: value/2,
            child: SizedBox(
                height: value,
                width: value,


                child: CircleAvatar( backgroundColor: Colors.white,))),
        Positioned(
            top: value/2,
            right: value/2,
            child: SizedBox(
                height: value,
                width:value,


                child: CircleAvatar( backgroundColor: Colors.white,))),
        Positioned(
            top: value/2,
            left: value/2,
            child: SizedBox(
                height: value,
                width: value,


                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ))),


      ]
    );
  }
}