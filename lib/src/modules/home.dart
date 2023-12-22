import 'package:carousel_slider/carousel_slider.dart';
import 'package:doolanan/service/api/SteamAPI.dart';
import 'package:doolanan/src/model/allgame_model.dart';
import 'package:doolanan/utils/app_style.dart';
import 'package:doolanan/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:doolanan/src/model/kategory_model.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  final SteamApiService steamApiService = SteamApiService('STEAMKEY');

  late List<AllGameModel>? games = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadGames();
  }

  Future<void> loadGames() async {
    try {
      final List<AllGameModel> fetchGames = await steamApiService.getAllGames();
      setState(() {
        games = fetchGames;
      });
    } catch (e) {
      print("Error load games : " + e.toString());
    }
  }

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
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('semuaAsset/gambar/re8.jpg'),
                          ),
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
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.all(1),
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
                                maxLines: 1,
                                controller: null,
                                cursorColor: white,
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    color: white,
                                    fontSize: (16),
                                    fontWeight: FontWeight.w300),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      gapPadding: 4),
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
                                    child: SvgPicture.asset(
                                        'semuaAsset/svg/Search.svg'),
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
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
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
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          // width: SizeConfig.screenHeight,
                          // height: SizeConfig.screenHeightHalf2,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Stack(
                            fit: StackFit.passthrough,
                            children: [
                              Image.asset(
                                'semuaAsset/gambar/Rectangle 4.png',
                                fit: BoxFit.fill,
                                width: double.infinity,
                              ),
                              Image.asset(
                                'semuaAsset/gambar/Rectangle 13.png',
                                fit: BoxFit.fill,
                                width: double.infinity,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 30, left: 15, right: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Text(
                                                "Starting at IDR 149 000",
                                                style: TextStyle(
                                                  color: white,
                                                  fontFamily: 'Be Vietnam Pro',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
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
                                                padding: const EdgeInsets.only(
                                                    right: 10),
                                                child: Container(
                                                    width:
                                                        SizeConfig.screenWidth4,
                                                    height: SizeConfig
                                                        .screenHeightHalf6,
                                                    decoration: BoxDecoration(
                                                        color: white,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    7))),
                                                    child: Material(
                                                      color: white,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  20)),
                                                      child: InkWell(
                                                        splashColor: asetC_red1,
                                                        highlightColor:
                                                            assetC_red4,
                                                        onTap: () {},
                                                        child: Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            "BUY NOW",
                                                            style: TextStyle(
                                                                color:
                                                                    assetC_red2,
                                                                fontFamily:
                                                                    'Bebas Neue',
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis),
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
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                child: InkWell(
                                                  onTap: () {},
                                                  highlightColor: asetC2_red4,
                                                  splashColor: asetC2_red4,
                                                  child: Container(
                                                    height: SizeConfig
                                                        .screenHeightHalf6,
                                                    width:
                                                        SizeConfig.screenWidth4,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 2,
                                                            color: white,
                                                            style: BorderStyle
                                                                .solid),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            Flexible(
                                                              flex: 2,
                                                              child: SvgPicture
                                                                  .asset(
                                                                      'semuaAsset/svg/Plus.svg'),
                                                            ),
                                                            Flexible(
                                                              flex: 4,
                                                              child: Text(
                                                                "ADD TO WISHLIST",
                                                                style: TextStyle(
                                                                    color:
                                                                        white,
                                                                    fontFamily:
                                                                        'Bebas Neue',
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis),
                                                              ),
                                                            ),
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
                              )
                            ],
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        height: SizeConfig.screenHeightHalf2_2,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
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
                    padding: EdgeInsets.only(top: 20, bottom: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Browse by Category",
                        style: TextStyle(
                            fontFamily: "Inter",
                            color: white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: listKategory.map((kategoryData) {
                      return InkWell(
                        onTap: () {},
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Stack(
                            children: [Image.asset(kategoryData.gambarK)],
                          ),
                        ),
                      );
                    }).toList()),
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
                            fontWeight: FontWeight.w600,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: paddingHorozontal1,
                        vertical: paddingVertical1,
                      ),
                      child: GridView.count(
                        shrinkWrap: true,
                        primary: false,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 1,
                        crossAxisCount: 3,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: SizeConfig.screenHeight,
                              width: SizeConfig.screenWidth4,
                              decoration: BoxDecoration(
                                color: assetC_red2,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  Flexible(
                                    child: Image.asset(
                                      'semuaAsset/gambar/hunt.png',
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Align(
                                        child: Text(
                                          "Hunt : Showdown",
                                          style: TextStyle(
                                              color: white,
                                              fontFamily: 'Inter',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 2.5, right: 2.5),
                                      child: Align(
                                        child: Text(
                                          "IDR 149 000",
                                          style: TextStyle(
                                              color: white,
                                              fontFamily: 'Inter',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w200,
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: SizeConfig.screenHeight,
                              width: SizeConfig.screenWidth4,
                              decoration: BoxDecoration(
                                color: assetC_red2,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      'semuaAsset/gambar/cyber.png',
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Align(
                                        child: Text(
                                          "Cyberpunk 2077",
                                          style: TextStyle(
                                              color: white,
                                              fontFamily: 'Inter',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 2.5, right: 2.5),
                                      child: Align(
                                        child: Text(
                                          "IDR 149 000",
                                          style: TextStyle(
                                              color: white,
                                              fontFamily: 'Inter',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w200,
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: SizeConfig.screenHeight,
                              width: SizeConfig.screenWidth4,
                              decoration: BoxDecoration(
                                color: assetC_red2,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      'semuaAsset/gambar/bloon.png',
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Align(
                                        child: Text(
                                          "Bloons TD 6",
                                          style: TextStyle(
                                              color: white,
                                              fontFamily: 'Inter',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 2.5, right: 2.5),
                                      child: Align(
                                        child: Text(
                                          "IDR 149 000",
                                          style: TextStyle(
                                              color: white,
                                              fontFamily: 'Inter',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w200,
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: SizeConfig.screenHeightHalf2,
                    width: SizeConfig.screenWidth,
                    child: ListView.builder(
                      itemCount: games!.length,
                      itemBuilder: (context, index) {
                        print('panjang games' + games!.length.toString());
                        if (games == null) {
                          return Text(
                            "Game Kosong",
                            style: TextStyle(color: white),
                          );
                        } else {
                          return ListTile(
                            leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage('semuaAsset/gambar/bloon.png')),

                            title: Text(
                              games![index].name,
                              style: TextStyle(color: white),
                            ),
                            // Add more details or actions if needed
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
