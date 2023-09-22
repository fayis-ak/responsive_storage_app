import 'package:flutter/material.dart';

class MenuController extends ChangeNotifier{
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get ScaffoldKey => _scaffoldKey;


  // void contrlMenu(){
  //   if(!_scaffoldKey.currentState.isDrawerOpen){
  //     _scaffoldKey.currentState.openDrawer();
  //   }
  // }
}