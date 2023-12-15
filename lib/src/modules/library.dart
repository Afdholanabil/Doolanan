import 'package:doolanan/utils/app_style.dart';
import 'package:doolanan/utils/size_config.dart';
import 'package:flutter/material.dart';

class LibraryPages extends StatelessWidget {
  const LibraryPages({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Library",
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
                                crossAxisSpacing: 4,
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
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.all(5),
                                                  child: Align(
                                                    child: Flexible(
                                                      child: Text(
                                                        "Hunt : Showdown",
                                                        style: TextStyle(
                                                            color: white,
                                                            fontFamily: 'Inter',
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 2.5,
                                                          right: 2.5),
                                                  child: Align(
                                                    child: Flexible(
                                                      child: Text(
                                                        "Installed",
                                                        style: TextStyle(
                                                            color: white,
                                                            fontFamily: 'Inter',
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w200,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis),
                                                      ),
                                                    ),
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
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.all(5),
                                                  child: Align(
                                                    child: Flexible(
                                                      child: Text(
                                                        "Cyberpunk 2077",
                                                        style: TextStyle(
                                                            color: white,
                                                            fontFamily: 'Inter',
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 2.5,
                                                          right: 2.5),
                                                  child: Align(
                                                    child: Flexible(
                                                      child: Text(
                                                        "Installed",
                                                        style: TextStyle(
                                                            color: white,
                                                            fontFamily: 'Inter',
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w200,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis),
                                                      ),
                                                    ),
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
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.all(5),
                                                  child: Align(
                                                    child: Flexible(
                                                      child: Text(
                                                        "Bloons TD 6",
                                                        style: TextStyle(
                                                            color: white,
                                                            fontFamily: 'Inter',
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 2.5,
                                                          right: 2.5),
                                                  child: Align(
                                                    child: Flexible(
                                                      child: Text(
                                                        "Installed",
                                                        style: TextStyle(
                                                            color: white,
                                                            fontFamily: 'Inter',
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w200,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis),
                                                      ),
                                                    ),
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
      ),
    );
  }
}
