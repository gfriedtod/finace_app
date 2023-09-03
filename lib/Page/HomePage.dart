import 'package:finace_app/componenet/activites.dart';
import 'package:finace_app/componenet/person_card.dart';
import 'package:finace_app/componenet/personal_icon.dart';
import 'package:finace_app/componenet/visa_card.dart';
import 'package:finace_app/ressources/mycolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  var darkMode =false;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        toolbarHeight: 100,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              SizedBox(width: 15,),
              SizedBox(
                width: 50,
                height: 50,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/carl.png'),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Hello james,',
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: MyColors.secondBlack),
                ),
                Text(
                  'Welcome back ',
                  style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: MyColors.black),
                ),
              ])
            ],
          ),
          Stack(children: [
            IconButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  EdgeInsets.all(0),
                )
              ),
                onPressed: () {}, icon: Icon(
                Icons.notifications_rounded)
            ),
            Positioned(
              left:screenWidth*0.06 ,
              bottom:28,
              child: Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: MyColors.primary,
                  shape: BoxShape.circle
                )
              ),
            )
          ])
        ]),
      ),
      body: Center(
        child: SizedBox(
          width: screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(
                width:  screenWidth*0.85,
                child: VisaCard(),
              ),
              SizedBox(height: screenHeight*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PersonalIcon(color: MyColors.secondary, title: 'Send', image: 'assets/sends.png',),
                  PersonalIcon(color: Color(0xffA7FED9) , title:  'Requests', image:'assets/requests.png' ),

                  PersonalIcon(color: Color(0xffA7F4FE), title: 'Wallet', image: 'assets/wallet.png',),
                  PersonalIcon(color: Color(0xffFED9A7), title: 'More', image: 'assets/more.png',),
                ],
              ),
              SizedBox(height: screenHeight*0.03,),
              SizedBox(
                width: screenWidth*0.85,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Send to', style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: (darkMode)?MyColors.white:MyColors.black,
                    )),

                    Row(
                      children: [
                        Text('View all', style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: (darkMode)?MyColors.white:MyColors.black,

                        )),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.arrow_forward_ios_rounded, color: (darkMode)?MyColors.white:MyColors.black,size: 12,)
                      ]
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight*0.03,),
              SizedBox(
                width: screenWidth*0.85,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PersonCard(image: 'assets/persone1.png', title: 'Maria', darkMode: darkMode,),
                    PersonCard(image: 'assets/persone2.png', title: 'James', darkMode: darkMode,),
                    PersonCard(image: 'assets/persone3.png', title: 'John', darkMode: darkMode,),
                    PersonCard(image: 'assets/persone4.png', title: 'James', darkMode: darkMode,),
                  ],
                ),
              ),
              SizedBox(height: screenHeight*0.03,),
              SizedBox(
                width: screenWidth*0.85,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Activities', style: GoogleFonts.roboto(

                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: (darkMode)?MyColors.white:MyColors.black,

                    )),
                    SizedBox(
                      height: 30,
                      child: Card(
                        elevation: 0,
                        color: Color(0xffF5F5F5),

                        margin: EdgeInsets.zero,
                        child: DropdownButton(
                          icon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.keyboard_arrow_down_outlined , size: 12,),
                          ),
                          elevation: 0,
                          underline: SizedBox(),

                          items: [
                          DropdownMenuItem(
                            value: 'Today',
                            child: Text('  Today ', style: GoogleFonts.roboto(fontSize: 14)),
                          ),

                          DropdownMenuItem(
                            value: 'Yester',
                            child: Text('Yest', style: GoogleFonts.roboto()),
                          ),

                          DropdownMenuItem(
                            value: 'Month',
                            child: Text('Last', style: GoogleFonts.roboto()),
                          ),


                        ], onChanged: (value){}, value: 'Today',),
                      ),
                    ),

                  ]
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: screenWidth*0.85,
                height: screenHeight*0.175,
                child: ListView(
                  children: [
                    Activities(image: 'assets/udemy.png', title: 'Udemy', darkMode: darkMode, cost: '-\$8520.00'),
                    Activities(image: 'assets/amazone.png', title: 'Amazone', darkMode: darkMode, cost: '-\$8520.00'),
                    Activities(image: 'assets/udemy.png', title: 'Udemy', darkMode: darkMode, cost: '-\$8520.00'),



                  ],
                ),
              )



            ]
          ),
        ),
      ),
    );
  }
}
