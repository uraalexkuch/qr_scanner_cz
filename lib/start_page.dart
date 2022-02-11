import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spring/spring.dart';

class StartPage extends StatelessWidget {
  final SpringController springController = SpringController();

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return SafeArea(
        child: Container(
          width: 100.w,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              tileMode: TileMode.mirror,
              begin: Alignment(0.0, -0.3),
              end: Alignment(1.0, 0.1),
              colors: [
                Color(0xff100b63),
                Color(0xff2196f3),
              ],
              stops: [
                0,
                1,
              ],
            ),
          ),
          child: Column(children: [
            Container(
              height: 40.h,
              child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 60),
                  child: Column(
                    children: [
                      Text(
                        "Cаннер вакансій",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: "Helvetica",
                          fontSize: 20.sp,
                          color: HexColor('#FFFFFF'),
                        ),
                        softWrap: true,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 20.h,
                            child: Lottie.asset('image/39701-robot-bot-3d.json'
                                //     'https://assets7.lottiefiles.com/packages/lf20_u38thn1f.json'),
                                ),
                            //Image.asset('image/animation_300_kzbpn6di.gif')
                          ))
                    ],
                  )),
            ),
            Container(
              child: Center(
                child: Spring.scale(
                    springController: springController,
                    start: 0.0, //required
                    end: 1.0, //required
                    animDuration: Duration(milliseconds: 2000), //def=1s,
                    animStatus: (AnimStatus status) {
                      print(status);
                    },
                    curve: Curves.easeInOut, //def=Curves.easeInOut
                    child: RaisedButton(
                      elevation: 10.0,
                      onPressed: () {
                        Get.toNamed('/Home/scanner');
                      },
                      padding: const EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(35.0)),
                        side: BorderSide(color: HexColor('#FFD947'), width: 3),
                      ),
                      color: HexColor("#005BAA"),
                      focusColor: HexColor('#FFD947'),
                      splashColor: HexColor('#FFD947'),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Поїхали",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: HexColor('#FFFFFF'),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 20.h,
                  child: Image.asset('image/qr_logo.jpg'
                      //     'https://assets7.lottiefiles.com/packages/lf20_u38thn1f.json'),
                      ),
                  //Image.asset('image/animation_300_kzbpn6di.gif')
                ))
          ]),
        ),
      );
    });
  }
}
