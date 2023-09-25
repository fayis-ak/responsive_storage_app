import 'package:flutter/material.dart';


import 'package:responsive_desaign/constants.dart';


import 'package:responsive_desaign/responsive/main_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
       
        canvasColor: secondaryColor,
        useMaterial3: true,
        
      ),
      debugShowCheckedModeBanner: false,
      home:MainScreen(),
      
        );
    
  }
}
