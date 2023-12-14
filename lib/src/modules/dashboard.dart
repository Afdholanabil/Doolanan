import 'package:doolanan/src/modules/account.dart';
import 'package:doolanan/src/modules/home.dart';

import 'package:doolanan/utils/app_style.dart';
import 'package:doolanan/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class dashboardPages extends StatefulWidget {
  const dashboardPages({super.key});

  @override
  State<dashboardPages> createState() => _dashboardPagesState();
}

class _dashboardPagesState extends State<dashboardPages> {
  int currentIdx = 0;
  final List<Widget> hamalan = [HomePages(), AccountPages()];

  void onTabTabed(int index) {
    setState(() {
      currentIdx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBody: true,
      
      body: 
             hamalan[currentIdx],
          
      bottomNavigationBar: SafeArea(
        child: BottomNavigationBar(
            selectedItemColor: asetC_red1,
            unselectedItemColor: assetC_abu,
            showUnselectedLabels: false,
            selectedLabelStyle: TextStyle(
                fontFamily: 'semuaAsset/font/BeVietnamPro-Medium.ttf',
                fontSize: 13,
                fontWeight: FontWeight.w600),
            onTap: onTabTabed,
            currentIndex: currentIdx,
            items: [
              new BottomNavigationBarItem(
                  icon: SvgPicture.asset('semuaAsset/svg/HomeDeactive.svg'),
                  activeIcon: SvgPicture.asset('semuaAsset/svg/HomeActive.svg'),
                  label: 'Home'),
              
              new BottomNavigationBarItem(
                  icon: SvgPicture.asset('semuaAsset/svg/2 UserDeactive.svg'),
                  activeIcon: SvgPicture.asset('semuaAsset/svg/2 UserActive.svg'),
                  label: 'Account',
                  backgroundColor: bg_color),
            ]),
      ),
    );
  }
}
