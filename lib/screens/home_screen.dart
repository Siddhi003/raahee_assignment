import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<T> map<T>(List list, Function handler) {
    List<T> result=[];
    for(var i=0; i<list.length; i++) {
      result.add(handler(i,list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Container(
              margin: EdgeInsets.only(left: 26, right: 30, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/svg/drawer_icon.svg'),
                  SvgPicture.asset('assets/svg/search_icon.svg')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(text:
                  TextSpan(
                    text: 'Hey, ',
                    style: GoogleFonts.inter(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Danijela', style: GoogleFonts.inter(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ))
                    ]
                  )),
                  SizedBox(height: 6,),
                  Text('Welcome to CoMent, find topic that interets you',
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: CupertinoColors.black
                  ),),
                ],
              ),

            ),
            Container(
              height: 199,
              child: Container(
                height: 199,
                width: 344,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/bg_1.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      bottom: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('The current hottest topics',
                          style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.black
                          ),),
                          Row(
                            children: [
                              Text('79 stories',
                              style: GoogleFonts.inter(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),),
                              SizedBox(width: 10,),
                              SvgPicture.asset('assets/svg/arrow_icon.svg',)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:20, top: 15, right: 20),
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: ExactAssetImage('assets/images/bg_2.jpg'),
                        fit: BoxFit.fill
                      )
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          bottom: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Join top people',
                              style: GoogleFonts.inter(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black
                              ),),
                              Row(
                                children: [
                                  Text('Community', style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),),
                                  SizedBox(width: 10,),
                                  SvgPicture.asset('assets/svg/arrow_icon.svg')
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 150,
                    width: 137,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: ExactAssetImage('assets/images/bg_3.jpg'),
                        fit: BoxFit.fill
                      )
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            left: 10,
                            bottom: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Share your story', style: GoogleFonts.inter(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black
                                ),),
                                Row(
                                  children: [
                                    Text('Write', style: GoogleFonts.inter(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                    ),),
                                    SizedBox(width: 10,),
                                    SvgPicture.asset('assets/svg/arrow_icon.svg')
                                  ],
                                )
                              ],
                            )
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top:15),
              child: Container(
                height: 130,
                width: 344,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  color: Colors.grey[300],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 5) ,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('assets/svg/book_icon.svg'),
                          SvgPicture.asset('assets/svg/dot_icon.svg')
                        ],
                      ),
                      Text('Finish reading the story about Dennis Martin', style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey.shade800,
                      ),
                        textAlign: TextAlign.left,
                      ),
                      Text('"Stop living in dark"', style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                      textAlign: TextAlign.left,),
                      SizedBox(height: 5,),
                      LinearProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.grey[800]),
                        backgroundColor: Colors.grey,
                        value: 0.64,
                      ),
                      SizedBox(height: 5,),
                      RichText(
                          text: TextSpan(
                            text: 'Hoooora, you have read',
                            style: GoogleFonts.inter(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey
                            ),
                            children: [
                              TextSpan(text: '64%', style: GoogleFonts.inter(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ))
                            ]
                          ) )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top:15),
              child: Container(
                height: 130,
                width: 344,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  color: Colors.grey[300],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('assets/svg/article_icon.svg'),
                          SvgPicture.asset('assets/svg/dot_icon.svg')
                        ],
                      ),
                      Text('Finish writin your article', style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey.shade800,
                      ),
                        textAlign: TextAlign.left,
                      ),
                      Text('"Danijela in the wornderland"', style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                        textAlign: TextAlign.left,),
                      SizedBox(height: 5,),
                      LinearProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.grey[800]),
                        backgroundColor: Colors.grey,
                        value: 0.64,
                      ),
                      SizedBox(height: 5,),
                      RichText(
                          text: TextSpan(
                              text: 'Hoooora, you have read',
                              style: GoogleFonts.inter(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey
                              ),
                              children: [
                                TextSpan(text: '64%', style: GoogleFonts.inter(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ))
                              ]
                          ) )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
