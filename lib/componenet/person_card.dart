import 'package:finace_app/ressources/mycolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonCard extends StatelessWidget {
  String title;

  bool darkMode;
  String image;

   PersonCard({super.key , required this.image, required this.title, required this.darkMode});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return SizedBox(
     width: 66,
     height: 90,
     child: Card(
       elevation: 0,
       color: Color(0xffF5F5F5),

       child: Padding(
         padding: const EdgeInsets.all(4.0),
         child: Column(
           children: [
             Container(
               width: 50,
               height: 50,
               decoration: BoxDecoration(
                // color: MyColors.primary,
                  image: DecorationImage(image: AssetImage(image),),

               ),

             ),
             SizedBox(height: 5,),
             Expanded(child: Text(title, style:  GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w400 , color: (darkMode)?MyColors.white:MyColors.black), textAlign: TextAlign.center,))
           ]
         ),
       ),
     ),
   );
  }
}