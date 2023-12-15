import 'package:flutter/material.dart';

class LibraryPages extends StatelessWidget {
  const LibraryPages({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(padding: 
        EdgeInsets.all(20),
        child: Align(alignment: Alignment.center,child: Text("Library"),),
        ), ),
    );
  }
}