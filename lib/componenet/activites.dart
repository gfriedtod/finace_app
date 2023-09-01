import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ressources/mycolors.dart';

class Activities extends StatelessWidget {
  String title;
  String image;
  String cost ;
  bool darkMode;

  Activities({super.key , required this.image, required this.title, required this.darkMode, required this.cost});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Card(
     elevation: 0,
     color: Color(0xffF5F5F5),

     child: Padding(
       padding: const EdgeInsets.all(10.0),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Row(
             children: [
               Image.asset(image),
               SizedBox(width: 10,),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(title, style: GoogleFonts.roboto( fontSize: 16, fontWeight: FontWeight.w500 , color: (darkMode)?MyColors.white:MyColors.black),),
                   SizedBox(height: 2,),
                   Text('Subscription', style: GoogleFonts.roboto( fontSize: 14, fontWeight: FontWeight.w400 , color: (darkMode)?MyColors.white:Color(0xff666666)),),
                 ]
               ),
             ],
           ),
           Text(cost, style: GoogleFonts.roboto( fontSize: 16, fontWeight: FontWeight.w500 , color: (darkMode)?MyColors.white:MyColors.black),)
         ]
       ),
     ),
   );
  }
}