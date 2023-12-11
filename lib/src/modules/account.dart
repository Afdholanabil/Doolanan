import 'package:doolanan/src/modules/login.dart';
import 'package:doolanan/utils/app_style.dart';
import 'package:doolanan/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountPages extends StatefulWidget {
  const AccountPages({super.key});

  @override
  State<AccountPages> createState() => _AccountPagesState();
}

class _AccountPagesState extends State<AccountPages> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: SizeConfig.screenHeightHalf2,
                                  width: SizeConfig.screenWidth2,
                                  decoration: BoxDecoration(
                                      color: asetC_red1,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                width: SizeConfig.screenWidth2,
                                height: SizeConfig.screenHeightHalf2,
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Afdholanabil",
                                            style: TextStyle(
                                                fontFamily:
                                                    'semuaAsset/font/Inter_Light.ttf',
                                                color: white,
                                                fontSize: 28,
                                                fontWeight: FontWeight.w700,
                                                overflow: TextOverflow.fade),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "YOUR PC DEVICE :",
                                            style: TextStyle(
                                                fontFamily:
                                                    'semuaAsset/font/Inter_Light.ttf',
                                                color: white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300,
                                                overflow: TextOverflow.fade),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "PC-XXXX XX X",
                                            style: TextStyle(
                                                fontFamily:
                                                    'semuaAsset/font/Inter_Light.ttf',
                                                color: white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                overflow: TextOverflow.fade),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "YOUR MOBILE DEVICE :",
                                            style: TextStyle(
                                                fontFamily:
                                                    'semuaAsset/font/Inter_Light.ttf',
                                                color: white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300,
                                                overflow: TextOverflow.fade),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "ANDROID - XXXX XX X",
                                            style: TextStyle(
                                                fontFamily:
                                                    'semuaAsset/font/Inter_Light.ttf',
                                                color: white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                overflow: TextOverflow.fade),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: assetC_red2,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 15, horizontal: 30),
                                            child: Flexible(
                                              child: Text(
                                                "Setting up Device",
                                                style: TextStyle(
                                                    fontFamily:
                                                        'semuaAsset/font/inter_Bold.ttf',
                                                    color: white,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "My Achievements",
                              style: TextStyle(
                                  fontFamily: 'semuaAsset/font/Inter_Light.ttf',
                                  color: white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: SizeConfig.screenHeightHalf4,
                            width: SizeConfig.screenWidth,
                            decoration: BoxDecoration(
                                color: asetC2_red3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Image.asset(
                                          'semuaAsset/gambar/bloon.png'),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Column(
                                  children: [
                                    Flexible(
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15),
                                          child: Text(
                                            'Bloons TD 6',
                                            style: TextStyle(
                                                fontFamily:
                                                    'semuaAsset/font/inter_medium.ttf',
                                                color: white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 0),
                                          child: Text(
                                            'You\'ve unlocked 1/56',
                                            style: TextStyle(
                                                fontFamily:
                                                    'semuaAsset/font/Inter_Light.ttf',
                                                color: white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                overflow: TextOverflow.fade),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 15, bottom: 15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                              child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Image.asset(
                                                  'semuaAsset/gambar/download.jpeg'),
                                            ),
                                            decoration: BoxDecoration(
                                                color: white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                          )),
                                          SizedBox(
                                            width: 2.5,
                                          ),
                                          Expanded(
                                              child: Container(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: SvgPicture.asset(
                                                  'semuaAsset/svg/Lock.svg'),
                                            ),
                                            decoration: BoxDecoration(
                                                color: white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                          )),
                                          SizedBox(
                                            width: 2.5,
                                          ),
                                          Expanded(
                                              child: Container(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: SvgPicture.asset(
                                                  'semuaAsset/svg/Lock.svg'),
                                            ),
                                            decoration: BoxDecoration(
                                                color: white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                          )),
                                          SizedBox(
                                            width: 2.5,
                                          ),
                                          Expanded(
                                              child: Container(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: SvgPicture.asset(
                                                  'semuaAsset/svg/Lock.svg'),
                                            ),
                                            decoration: BoxDecoration(
                                                color: white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                          )),
                                        ],
                                      ),
                                    ))
                                  ],
                                ))
                              ],
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: Container(
                          height: SizeConfig.blockSizeVertical2,
                          width: SizeConfig.screenWidth,
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20)),
                        ),
                      ),

                      //-----------------------------------RECENT ACTIVITY -----------------------------------
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Recent Activity",
                              style: TextStyle(
                                  fontFamily: 'semuaAsset/font/Inter_Light.ttf',
                                  color: white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ),
                      //-----------------------------------------GAP----------------------------------------------
                      Align(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: SizeConfig.screenHeightHalf4,
                            width: SizeConfig.screenWidth,
                            decoration: BoxDecoration(
                                color: asetC2_red3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Image.asset(
                                          'semuaAsset/gambar/bloon.png'),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Column(
                                  children: [
                                    Flexible(
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15),
                                          child: Text(
                                            'Bloons TD 6',
                                            style: TextStyle(
                                                fontFamily:
                                                    'semuaAsset/font/inter_medium.ttf',
                                                color: white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 0),
                                          child: Text(
                                            'Play time : 34.5 Hours',
                                            style: TextStyle(
                                                fontFamily:
                                                    'semuaAsset/font/Inter_Light.ttf',
                                                color: white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                overflow: TextOverflow.fade),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0, right: 10, bottom: 10),
                                          child: Text(
                                            'Last played on 1 Dec ',
                                            style: TextStyle(
                                                fontFamily:
                                                    'semuaAsset/font/Inter_Light.ttf',
                                                color: white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                overflow: TextOverflow.fade),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: Container(
                          height: SizeConfig.blockSizeVertical2,
                          width: SizeConfig.screenWidth,
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20)),
                        ),
                      ),

                      //------------------------------- CHANGE ACCOUNT -----------------------------
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Flexible(
                            child: Text(
                              "Change account",
                              style: TextStyle(
                                  fontFamily:
                                      'semuaAsset/font/inter_medium.ttf',
                                  color: white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  overflow: TextOverflow.fade),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => loginPages()));
                            },
                            child: Flexible(
                              child: Text(
                                "Sign out of this account",
                                style: TextStyle(
                                    fontFamily:
                                        'semuaAsset/font/inter_medium.ttf',
                                    color: white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    overflow: TextOverflow.fade),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
