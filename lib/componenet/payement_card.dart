

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ressources/mycolors.dart';

class PayementCard extends StatelessWidget{
  var object;

  PayementCard({super.key, required this.object});
  @override
  Widget build(BuildContext context) {
     var screenHeight = MediaQuery.of(context).size.height;
     var screenWidth = MediaQuery.of(context).size.width;
    // TODO: implement build
   return ListView.builder(
     itemCount: object.length,
     scrollDirection: Axis.horizontal,
     itemBuilder: (BuildContext context, int index) {
       return   SizedBox(
         width: screenWidth/2.45,
         height: 138,


         child: Card(
           color: object[index]['color'],
           child: Padding(
             padding: const EdgeInsets.all(12.0),
             child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                     width: 30,
                     height: 30,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(10.0),

                     ),
                     child: Center(
                       child: Image.asset( object[index]['image'],),
                     )
                     ,
                   ),
                   SizedBox(height: 5,),
                   Text( object[index]['title'],style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w600,),),
                   Text( object[index]['date'],style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,)),
                   SizedBox(height: 10,),
                   Expanded(
                     child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text( object[index]['cost'],style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w900,)),
                           Image.asset('assets/increase.png')
                         ]
                     ),
                   )

                 ]
             ),
           ),
         ),

       );
     },

   );
  }

}