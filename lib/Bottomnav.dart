import 'package:flutter/material.dart';
import 'package:login/Correction.dart';
import 'package:login/report.dart';

import 'dashboard.dart';
class batomnav extends StatefulWidget {
  const batomnav({super.key});

  @override
  State<batomnav> createState() => _batomnavState();
}

class _batomnavState extends State<batomnav> {
  int _index=0;
  final pages=[
    correction(),
    report(),
  ];
  void tap(index)
  {
    setState(() {
      _index=index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(items:
      [
        BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: "Dashboard"),
        BottomNavigationBarItem(icon: Icon(Icons.book),label: "Report"),
      ],

      currentIndex: _index,
        onTap: tap,
      ),


    );
  }
}
