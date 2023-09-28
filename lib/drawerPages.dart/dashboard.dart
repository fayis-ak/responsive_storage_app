// import 'package:flutter/material.dart';
// import 'package:responsive_desaign/constants.dart';
// import 'package:responsive_desaign/drawerPages.dart/profile.dart';
// import 'package:responsive_desaign/drawerPages.dart/settings.dart';
// import 'package:responsive_desaign/drawerPages.dart/store.dart';
// import 'package:responsive_desaign/drawerPages.dart/task.dart';
// import 'package:responsive_desaign/drawerPages.dart/transaction.dart';
// import 'package:responsive_desaign/models/MyFiles.dart';
// import 'package:responsive_desaign/responsive.dart';
// import 'package:responsive_desaign/responsive/main_screen.dart';

// import '../screens/dashboard/components/file_info-card.dart';

// class Dashboard extends StatelessWidget {
//   const Dashboard({super.key});

  

//   @override
//   Widget build(BuildContext context) {
//     final Size _size = MediaQuery.of(context).size;
//     return Scaffold(
      
//       body: Drawer(
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
            
//              Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//                children: [
//                  if(!Responsive.isDesktop(context))
//                  IconButton(onPressed: (){
//                   Navigator.of(context).pop();
//                  },
                 
//                   icon:const Icon(Icons.navigate_before,size: 50,)
                  
//                   ),
//                ],
//              ),
             

//             DrawerHeader(
//               child: Image.asset('assets/images/logo.png'),
              
//             ),
//             DrawerListTile( // Changed from DrawerListView
//               title: "Dashbord",
//               svgSrc: "assets/icons/menu_dashbord.svg",
//               press: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context)=> MainScreen())
//                    );
//               },
//             ),
//             DrawerListTile( // Changed from DrawerListView
//               title: "Transaction",
//               svgSrc: "assets/icons/menu_tran.svg",
//               press: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context)=> Transactions())
//                    );
//               },
//             ),
//             DrawerListTile( // Changed from DrawerListView
//               title: "Task",
//               svgSrc: "assets/icons/menu_task.svg",
//               press: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context)=> Task())
//                    );
//               },
//             ),
//             DrawerListTile( // Changed from DrawerListView
//               title: "Documents",
//               svgSrc: "assets/icons/menu_doc.svg",
//               press: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context)=> Task())
//                    );
//               },
//             ),
//             DrawerListTile( // Changed from DrawerListView
//               title: "Store",
//               svgSrc: "assets/icons/menu_store.svg",
//               press: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context)=> Store())
//                    );
//               },
//             ),
//             DrawerListTile( // Changed from DrawerListView
//               title: "Notification",
//               svgSrc: "assets/icons/menu_notification.svg",
//               press: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context)=> Task())
//                    );
//               },
//             ),
//             DrawerListTile( // Changed from DrawerListView
//               title: "Profile",
//               svgSrc: "assets/icons/menu_profile.svg",
//               press: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context)=> Profile())
//                    );
//               },
//             ),
//             DrawerListTile( // Changed from DrawerListView
//               title: "Settings",
//               svgSrc: "assets/icons/menu_setting.svg",
//               press: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context)=> Settings())
//                    );
//               },
//             ),
            
              
//           ],
//         ),
//       ),
//       ),
      
//     );
    
//   }
// }