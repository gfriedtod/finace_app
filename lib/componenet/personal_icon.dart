import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ressources/mycolors.dart';

class PersonalIcon extends StatelessWidget{
  Color color;
  String title;
  String image;

  var darkMode = false;
   PersonalIcon({super.key, required this.color, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialButton(
     padding: EdgeInsets.zero,
     shape:RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(20.0),
     ),
     onPressed: () {  },
     child: SizedBox(
       width: 60,
       height: 85,
       child: Column(

         children: [
           Card(
             elevation: 0,
             color: Color(0xffF5F5F5),

             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Center(
                 child: CircleAvatar(
                   backgroundColor: color,
                   child: Center(child: Image.asset(image)),
                 ),
               ),
             ),

           ),
           SizedBox(height: 5,),
           Expanded(child: Text(title, style:  GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w400 , color: (darkMode)?MyColors.white:MyColors.black), textAlign: TextAlign.center,)),
         ],
       ),
     ),
   );
  }

}