import 'package:carousel_slider/carousel_slider.dart';
import 'package:doolanan/utils/app_style.dart';
import 'package:doolanan/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Expanded(
                  //     child: Positioned(
                  //   child: Row(
                  //     children: [
                  //       Expanded(child: Material(
                  //         borderRadius: BorderRadius.all(Radius.circular(10)),
                  //         child: InkWell(

                  //         ),
                  //       ))
                  //     ],
                  //   ),
                  // )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Align(
                            child: Container(
                          height: SizeConfig.screenHeightHalf5_2,
                          width: SizeConfig.screenWidth4_2,
                          decoration: BoxDecoration(
                              color: asetC_red1,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        )),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.all(1),
                                  child: Flexible(
                                    child: Text(
                                      "PC-Device | Mobile Device",
                                      style: TextStyle(
                                          color: white,
                                          fontFamily: 'Inter',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.all(1),
                                  child: Flexible(
                                    child: Text(
                                      "Afdholanabil",
                                      style: TextStyle(
                                          color: white,
                                          fontFamily: 'Inter',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: SvgPicture.asset('semuaAsset/svg/Game.svg'),
                        ),
                      ),
                      Align(
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child:
                              SvgPicture.asset('semuaAsset/svg/Group 13.svg'),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: FractionalOffset.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        decoration: BoxDecoration(
                            color: aset_search,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        width: double.infinity,
                        margin: const EdgeInsets.all(2),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: null,
                                cursorColor: bg_color,
                                style: TextStyle(
                                    fontFamily:
                                        "semuaAsset/font/Inter_Light.ttf",
                                    color: white,
                                    fontSize: (16),
                                    fontWeight: FontWeight.w300),
                                decoration: InputDecoration(
                                  fillColor: aset_search,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      gapPadding: 4),
                                  hintText: 'Search...',
                                  hintStyle: TextStyle(
                                      color: assetC_abu,
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(10, 13, 10, 7),
                                ),
                              ),
                            ),
                            Material(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        )),
                                    child: Expanded(
                                        child: SvgPicture.asset(
                                            'semuaAsset/svg/Search.svg')),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Featured & Recomended',
                        style: TextStyle(
                            color: white,
                            fontFamily: 'Inter',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                  ),
                  CarouselSlider(
                      items: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            // width: SizeConfig.screenHeight,
                            // height: SizeConfig.screenHeightHalf2,
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Stack(
                              fit: StackFit.passthrough,
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    'semuaAsset/gambar/Rectangle 4.png',
                                    fit: BoxFit.fill,
                                    width: double.infinity,
                                  ),
                                ),
                                Expanded(
                                  child: Image.asset(
                                    'semuaAsset/gambar/Rectangle 13.png',
                                    fit: BoxFit.fill,
                                    width: double.infinity,
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 30, left: 15, right: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10),
                                                child: Text(
                                                    "Starting at IDR 149 000",
                                                    style: TextStyle(
                                                      color: white,
                                                      fontFamily:
                                                          'Be Vietnam Pro',
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    )),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Container(
                                                        width: SizeConfig
                                                            .screenWidth4,
                                                        height: SizeConfig
                                                            .screenHeightHalf6,
                                                        decoration: BoxDecoration(
                                                            color: white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            7))),
                                                        child: Material(
                                                          color: white,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          20)),
                                                          child: InkWell(
                                                            splashColor:
                                                                asetC_red1,
                                                            highlightColor:
                                                                assetC_red4,
                                                            onTap: () {},
                                                            child: Flexible(
                                                              child: Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Text(
                                                                  "BUY NOW",
                                                                  style: TextStyle(
                                                                      color:
                                                                          assetC_red2,
                                                                      fontFamily:
                                                                          'Bebas Neue',
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        )),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    borderOnForeground: false,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20)),
                                                    child: InkWell(
                                                      onTap: () {},
                                                      highlightColor:
                                                          asetC2_red4,
                                                      splashColor: asetC2_red4,
                                                      child: Container(
                                                        height: SizeConfig
                                                            .screenHeightHalf6,
                                                        width: SizeConfig
                                                            .screenWidth4,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                width: 2,
                                                                color: white,
                                                                style:
                                                                    BorderStyle
                                                                        .solid),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10))),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(0),
                                                          child: Row(children: [
                                                            Expanded(
                                                              child: SvgPicture
                                                                  .asset(
                                                                      'semuaAsset/svg/Plus.svg'),
                                                            ),
                                                            Flexible(
                                                                child: Text(
                                                              "ADD TO WISHLIST",
                                                              style: TextStyle(
                                                                  color: white,
                                                                  fontFamily:
                                                                      'Bebas Neue',
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis),
                                                            )),
                                                          ]),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        height: SizeConfig.screenHeightHalf2_2,
                        // autoPlay: true,
                        // autoPlayInterval: Duration(seconds: 3),
                        // enlargeCenterPage: true,
                        aspectRatio: 16 / 4,
                        viewportFraction: 1,
                        autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                        enableInfiniteScroll: true,
                        // autoPlayAnimationDuration: Duration(milliseconds: 8000),
                      )),

                  SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Trending",
                        style: TextStyle(
                            color: white,
                            fontFamily: 'Inter',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                  ),

                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: paddingHorozontal1,
                              vertical: paddingVertical1),
                          child: GridView.count(
                              shrinkWrap: true,
                              primary: false,
                              crossAxisSpacing: 2,
                              mainAxisSpacing: 2,
                              crossAxisCount: 3,
                              children: <Widget>[
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: SizeConfig.screenHeight,
                                      width: SizeConfig.screenWidth4,
                                      decoration: BoxDecoration(
                                        color: assetC_red2,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Expanded(
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Image.asset(
                                                'semuaAsset/gambar/hunt.png',
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Align(
                                                child: Text(
                                                  "Hunt : Showdown",
                                                  style: TextStyle(
                                                      color: white,
                                                      fontFamily: 'Inter',
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      overflow: TextOverflow
                                                          .ellipsis),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Align(
                                                child: Text(
                                                  "IDR 49 000",
                                                  style: TextStyle(
                                                      color: white,
                                                      fontFamily: 'Inter',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w200,
                                                      overflow: TextOverflow
                                                          .ellipsis),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: SizeConfig.screenHeight,
                                      width: SizeConfig.screenWidth4,
                                      decoration: BoxDecoration(
                                        color: assetC_red2,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Expanded(
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Image.asset(
                                                'semuaAsset/gambar/cyber.png',
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Align(
                                                child: Text(
                                                  "Cyberpunk 2077",
                                                  style: TextStyle(
                                                      color: white,
                                                      fontFamily: 'Inter',
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      overflow: TextOverflow
                                                          .ellipsis),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Align(
                                                child: Text(
                                                  "IDR 49 000",
                                                  style: TextStyle(
                                                      color: white,
                                                      fontFamily: 'Inter',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w200,
                                                      overflow: TextOverflow
                                                          .ellipsis),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: SizeConfig.screenHeight,
                                      width: SizeConfig.screenWidth4,
                                      decoration: BoxDecoration(
                                        color: assetC_red2,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Expanded(
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Image.asset(
                                                'semuaAsset/gambar/bloon.png',
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Align(
                                                child: Text(
                                                  "Bloons TD 6",
                                                  style: TextStyle(
                                                      color: white,
                                                      fontFamily: 'Inter',
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      overflow: TextOverflow
                                                          .ellipsis),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Align(
                                                child: Text(
                                                  "IDR 49 000",
                                                  style: TextStyle(
                                                      color: white,
                                                      fontFamily: 'Inter',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w200,
                                                      overflow: TextOverflow
                                                          .ellipsis),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]))),
                ],
              ),
            )),
      ),
    );
  }
}
