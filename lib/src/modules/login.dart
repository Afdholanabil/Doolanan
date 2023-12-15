import 'package:doolanan/src/modules/dashboard.dart';
import 'package:doolanan/utils/app_style.dart';
import 'package:doolanan/utils/size_config.dart';
import 'package:flutter/material.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Sign In or Sign Up",
                        style: TextStyle(
                            color: white,
                            fontFamily: 'semuaAsset/font/inter_bold.ttf',
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Align(
                    alignment: FractionalOffset.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.all(2),
                        child: TextFormField(
                          controller: null,
                          cursorColor: bg_color,
                          style: TextStyle(
                              fontFamily: "semuaAsset/font/Inter_Light.ttf",
                              color: white,
                              fontSize: (16),
                              fontWeight: FontWeight.w300),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: assetC_abu,
                                    style: BorderStyle.solid,
                                    width: 1)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: assetC_abu,
                                    style: BorderStyle.solid,
                                    width: 1)),
                            hintText: 'Email Address',
                            hintStyle: TextStyle(color: assetC_abu),
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 13, 10, 7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: FractionalOffset.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.all(2),
                        child: TextFormField(
                          controller: null,
                          cursorColor: bg_color,
                          style: TextStyle(
                              fontFamily: "semuaAsset/font/Inter_Light.ttf",
                              color: white,
                              fontSize: (16),
                              fontWeight: FontWeight.w300),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                gapPadding: 10,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: assetC_abu,
                                    style: BorderStyle.solid,
                                    width: 1)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Colors.white70,
                                    style: BorderStyle.solid,
                                    width: 1)),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: assetC_abu),
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 13, 10, 7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Material(
                          color: assetC_red4,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          borderRadius: BorderRadius.circular(8),
                          child: InkWell(
                            splashColor: assetC_red2,
                            highlightColor: assetC_red2,
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => dashboardPages()));
                            },
                            child: Container(
                              height: 50,
                              child: Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text('CONTINUE',
                                      style: TextStyle(
                                          fontFamily:
                                              'semuaAsset/font/BeVietnamPro-Bold.ttf',
                                          color: white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16)),
                                ),
                              ),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      )),
    );
  }
}
