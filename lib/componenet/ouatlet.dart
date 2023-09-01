import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Oatlet extends StatelessWidget{
  const Oatlet({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return    Container(
      width: 320,
      height: 320,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/mainImage.png'),


        ),

      ),
      child: Center(
        child: Text('OALET',style:  GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.bold , color: Colors.white),),
      ),
    ) ;
  }

}