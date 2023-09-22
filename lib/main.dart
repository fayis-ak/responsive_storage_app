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

// import 'package:flutter/material.dart';
// import 'package:responsive_builder/responsive_builder.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Responsive Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ScreenTypeLayout.builder(
//         desktop: (BuildContext context) => MyHomePage(title: 'Desktop Layout'),
//         tablet: (BuildContext context) => MyHomePage(title: 'Tablet Layout'),
//         mobile: (BuildContext context) => MyHomePage(title: 'Mobile Layout'),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   final String title;

//   MyHomePage({required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child: Text(
//           'Welcome to $title!',
//           style: TextStyle(fontSize: 24.0),
//         ),
//       ),
//     );
//   }
// }
