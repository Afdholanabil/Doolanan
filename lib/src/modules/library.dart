import 'package:flutter/material.dart';

class LibraryPages extends StatefulWidget {
  const LibraryPages({super.key});

  @override
  State<LibraryPages> createState() => _LibraryPagesState();
}

class _LibraryPagesState extends State<LibraryPages> {
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