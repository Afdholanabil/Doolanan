import 'package:doolanan/src/modules/login.dart';
import 'package:doolanan/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ScreenUtilInit(builder: (context, child) {
      
      return MaterialApp(
        
          title: "Doolanan",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: bg_color,
            primarySwatch: Colors.blue,
          ),
          home: SplashScreen());
    });
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    masukLogin();
  }

  masukLogin() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => loginPages()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Image.asset('semuaAsset/gambar/berhasil_login_vector2.png'),
      ),
    );
  }
}
