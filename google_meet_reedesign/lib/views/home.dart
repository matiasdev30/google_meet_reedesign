import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:root/const/const.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:root/widget/liner_nav_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController scrollController = ScrollController(
    keepScrollOffset: true,
  );

  ScrollController scrollCtrl = ScrollController(initialScrollOffset: 300);

  int currectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Row(
          children: [
            Container(
              height: heightScreen(context),
              width: 100,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  cardIcon('assets/google2.png',height: 40, width: 50),
                  Spacer(),
                  LinearNavBar(),
                  Spacer(),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/braulio.jpg'),
                    radius: 17,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              height: heightScreen(context),
              width: widthScreen(context) - 100,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15))),
              child: Row(
                children: [
                  Container(
                    height: heightScreen(context),
                    width: (widthScreen(context) - 100) * .65,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffF0F1F3)),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.grey,
                                  size: 10,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Overview of new real estate proposals',
                              style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 50,
                              height: 20,
                              padding: EdgeInsets.only(left: 5, right: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffD0D3E3)),
                              child: Center(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      size: 10,
                                      color: Color(0xff606BA2),
                                    ),
                                    Text(
                                      'Team',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 9,
                                        color: Color(0xff606BA2),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            height: 1,
                            width: double.infinity,
                            color: Color(0xffF0F1F3)),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.person,
                              size: 14,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Invited to the call:',
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffEDFAF8)),
                              child: Center(
                                child: Text(
                                  '6',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 9,
                                    color: Color(0xff009A81),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(
                              Icons.logout,
                              size: 14,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Absent people:',
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffFCF2F2)),
                              child: Center(
                                child: Text(
                                  '2',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 9,
                                    color: Color(0xffFC5D5B),
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff009A81),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 12,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Add user to ther call',
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: Color(0xff009A81),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          height: heightScreen(context) - 200,
                          padding: EdgeInsets.only(
                              top: 20, left: 20, right: 20, bottom: 40),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/mvni3.jpg'))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 10, sigmaY: 10),
                                        child: Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            children: [
                                              cardIcon('assets/mvni2.jpg',
                                                  border: true,
                                                  height: 40,
                                                  width: 40,
                                                  borderValue: 10),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Developer',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Mvni Null',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                  Spacer(),
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 10, sigmaY: 10),
                                        child: Container(
                                          height: 30,
                                          width: 80,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white
                                                  .withOpacity(0.1)),
                                          child: Center(
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 10,
                                                  width: 10,
                                                  padding: EdgeInsets.all(3),
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Container(
                                                    height: 10,
                                                    width: 10,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xffFC5D5B),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(
                                                  '03:15',
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 10,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Spacer(),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )),
                                  Spacer(),
                                  SizedBox(
                                    width: 80,
                                  ),
                                  Container(
                                    width: 50,
                                    height: 242,
                                    child: Column(
                                      children: [
                                        _cardUserOne('assets/anisio.jpg',
                                            haveActio: true,
                                            cor: Color(0xffFC5D5B),
                                            icon: Icon(Icons.mic_off)),
                                        SizedBox(height: 10),
                                        _cardUserOne('assets/pedro.jpg'),
                                        SizedBox(height: 10),
                                        _cardUserOne('assets/henrique.jpg'),
                                        SizedBox(height: 10),
                                        _cardUserOne('assets/braulio.jpg',
                                            haveActio: true,
                                            cor: Color(0xff00A389),
                                            icon: Icon(Icons.graphic_eq)),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  RotatedBox(
                                    quarterTurns: -1,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                              sigmaX: 10, sigmaY: 10),
                                          child: Container(
                                            width: 160,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.white.withOpacity(0.1),
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Row(
                                              children: [
                                                Spacer(),
                                                 RotatedBox(
                                                  quarterTurns: 1,
                                                  child: Icon(Icons.speaker_sharp, color: Colors.white)
                                                ),
                                                
                                                Center(
                                                  child: SliderTheme(
                                                    data: SliderThemeData(
                                                      activeTrackColor: Color(0xff01A288),
                                                     
                                                      thumbColor: Color(0xff01A288),
                                                      inactiveTrackColor: Color(0xff959D9E)
                                                    ),
                                                    child: Container(
                                                      width: 130,
                                                      child: Slider(
                                                        min: 0,
                                                        max: 50,
                                                        value: 20,
                                                        onChanged: (value){

                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                               
                                              ],
                                            )
                                          ),
                                        )),
                                  ),
                                  Spacer(),
                                  _videoButtom(icon: Icon(Icons.expand)),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  _videoButtom(
                                      icon: Icon(Icons.mic_off_rounded)),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xffFC5D5B),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.phone,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  _videoButtom(icon: Icon(Icons.camera)),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  _videoButtom(icon: Icon(Icons.settings)),
                                  Spacer()
                                ],
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Icon(
                              Icons.graphic_eq,
                              color: Color(0xff00A389),
                            ),
                            Icon(Icons.graphic_eq, color: Color(0xff00A389)),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'now',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  'Thanks for sending completed trasnscripts through - we\'ve been really happy...',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Stack(
                      children: [
                        Container(
                          width: 421,
                          height: heightScreen(context),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xffEDF0F5)),
                          child: ListView(
                            shrinkWrap: true,
                            controller: scrollCtrl,
                            children: [
                              _respost(
                                  img: 'assets/henrique.jpg',
                                  msg: 'Vamos jogar Call of Dutty?',
                                  name: 'Henrique Kakuatala'),
                              _respost(
                                  msg: 'Vamos criar um esquadrão\n com uns wi',
                                  name: 'You',
                                  myRespost: false),
                              _respost(
                                img: 'assets/anisio.jpg',
                                msg: 'Os wi jogam bem?',
                                name: 'You',
                              ),
                              _respost(
                                img: 'assets/pedro.jpg',
                                msg: 'Manda foto dos wi',
                                name: 'Pedro Massango',
                              ),
                              _respost(
                                img: 'assets/mvni.jpg',
                                msg: 'Da só vaga mo kota 🤣',
                                name: 'Mvni Null',
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              _respost(
                                img: 'assets/mvni.jpg',
                                msg: 'Nenhuma vaga?',
                                name: 'Mvni Null',
                              ),
                              _respost(
                                  msg: 'Ainda não estas bumbar?',
                                  name: 'You',
                                  myRespost: false),
                              _respost(
                                img: 'assets/mvni2.jpg',
                                msg: 'Nada, preciso muito\nde uma vaga e pc',
                                name: 'Mvni Null',
                              ),
                              _respost(
                                img: 'assets/mvni4.jpg',
                                msg: 'Tenho que ver One Piece 💔',
                                name: 'Mvni Null',
                              ),
                              _respost(
                                img: 'assets/mvni4.jpg',
                                name: 'Mvni Null',
                                isCall: true,
                              ),
                              Row(
                                children: [
                                  Spacer(),
                                  cardIcon('assets/img1.png',
                                      height: 100, border: true, width: 80),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  cardIcon('assets/img2.png',
                                      height: 100, border: true, width: 80),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              _respost(
                                  msg: 'Vão resgastar o Ace 🔥',
                                  name: 'You',
                                  myRespost: false),
                              _respost(
                                img: 'assets/mvni3.jpg',
                                msg: 'Da só vaga mo kota 🤣',
                                name: 'Mvni Null',
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 15.0,
                          right: 10.0,
                          left: 10.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Container(
                              width: 416,
                              height: 60,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.grey.shade300,
                                      offset: Offset(4, 4),
                                      spreadRadius: 0.1,
                                      blurRadius: 1,
                                    ),
                                    BoxShadow(
                                      color: Colors.grey.shade300,
                                      offset: Offset(-4, 0),
                                      spreadRadius: 0.1,
                                      blurRadius: 1,
                                    ),
                                  ]),
                              child: Row(
                                children: [
                                  Text(
                                    'Write your message...',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff009A81),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.send,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0.0,
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: Container(
                                  width: 421,
                                  height: 50,
                                  padding: EdgeInsets.only(
                                    left: 15,
                                    right: 15,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.1),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15)),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Group chat',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        width: 70,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Color(0xffD1E8E8)),
                                        child: Center(
                                          child: Text(
                                            'Messages',
                                            style: GoogleFonts.montserrat(
                                              fontSize: 12,
                                              color: Color(0xff009A81),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Participants',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _respost(
      {String msg,
      String img,
      String name,
      bool myRespost = true,
      bool isCall = false}) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: myRespost == true
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 35, bottom: 5, right: 10),
            child: Text(
              name,
              style: GoogleFonts.montserrat(
                fontSize: 9,
                color: Colors.black,
              ),
            ),
          ),
          Row(
            children: [
              myRespost == false
                  ? Spacer()
                  : Container(
                      padding: EdgeInsets.only(right: 10),
                      child: cardIcon(img, border: true, borderValue: 25),
                    ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: myRespost == true
                            ? Colors.white
                            : Color(0xffD0D3E3),
                        borderRadius: myRespost == true
                            ? BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topRight: Radius.circular(15))
                            : BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                        boxShadow: myRespost == true
                            ? <BoxShadow>[
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  offset: Offset(4, 4),
                                  spreadRadius: 0.1,
                                  blurRadius: 1,
                                ),
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  offset: Offset(-4, 0),
                                  spreadRadius: 0.1,
                                  blurRadius: 1,
                                ),
                              ]
                            : []),
                    child: Expanded(
                      child: isCall == false
                          ? Row(
                              children: [
                                Text(
                                  msg,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 11,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            )
                          : Row(
                              children: [
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffC7ECE6),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.send,
                                      color: Color(0xff009A81),
                                      size: 12,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Started call',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 11,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                    ),
                  ),
                ],
              ),
              myRespost == true ? Spacer() : Container()
            ],
          ),
        ],
      ),
    );
  }

  _cardUserOne(img, {bool haveActio = false, Color cor, Icon icon}) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1.5),
              borderRadius: BorderRadius.circular(10)),
          child: cardIcon(img,
              height: 50, width: 50, border: true, borderValue: 10),
        ),
        Positioned(
            bottom: 5,
            right: 5,
            child: haveActio == true
                ? Container(
                    width: 17,
                    height: 17,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: cor,
                    ),
                    child: Center(
                        child: Icon(
                      icon.icon,
                      color: Colors.white,
                      size: 12,
                    )),
                  )
                : Container())
      ],
    );
  }

  _videoButtom({Icon icon}) {
    return Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(35),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Center(
                child: Icon(
                  icon.icon,
                  color: Colors.white,
                  size: 17,
                ),
              )),
        ));
  }

  _cardMsg({String img, String name, Widget contextMsg, Widget widgetStatu}) {
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(img),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    contextMsg
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '12:34',
                      style: GoogleFonts.montserrat(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    widgetStatu
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 55),
              child: Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey.shade200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
