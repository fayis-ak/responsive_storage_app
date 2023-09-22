import 'package:flutter/material.dart';


import 'package:responsive_desaign/constants.dart';


import 'package:responsive_desaign/responsive/main_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
        // .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
        useMaterial3: true,
        
      ),
      debugShowCheckedModeBanner: false,
      home:MainScreen(),
      //  MultiProvider(
        // providers: [
        //   ChangeNotifierProvider<MenuController>(
        //     create: (context)=> MenuController(),
        //     ),
        // ],
        // child: MainScreen(),
        );
    // );
  }
}
