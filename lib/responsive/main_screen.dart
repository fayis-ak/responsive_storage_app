

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_desaign/drawerPages.dart/dashboard.dart';
import 'package:responsive_desaign/drawerPages.dart/profile.dart';
import 'package:responsive_desaign/drawerPages.dart/settings.dart';
import 'package:responsive_desaign/drawerPages.dart/store.dart';
import 'package:responsive_desaign/drawerPages.dart/task.dart';
import 'package:responsive_desaign/drawerPages.dart/transaction.dart';
import 'package:responsive_desaign/responsive.dart';
import 'package:responsive_desaign/screens/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidemenu(context), 
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: Container(
                  child: Sidemenu(context), 
                ),
              ),
            Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}

class Sidemenu extends StatelessWidget {
  final BuildContext context; 

  Sidemenu(this.context); 

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 if(!Responsive.isDesktop(context))
                 IconButton(onPressed: (){
                  Navigator.of(context).pop();
                 },
                 
                  icon:const Icon(Icons.navigate_before,size: 50,)
                  
                  ),
               ],
             ),
             

            DrawerHeader(
              child: Image.asset('assets/images/logo.png'),
              
            ),
            DrawerListTile( // Changed from DrawerListView
              title: "Dashbord",
              svgSrc: "assets/icons/menu_dashbord.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> Dashboard())
                   );
              },
            ),
            DrawerListTile( // Changed from DrawerListView
              title: "Transaction",
              svgSrc: "assets/icons/menu_tran.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> Transactions())
                   );
              },
            ),
            DrawerListTile( // Changed from DrawerListView
              title: "Task",
              svgSrc: "assets/icons/menu_task.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> Task())
                   );
              },
            ),
            DrawerListTile( // Changed from DrawerListView
              title: "Documents",
              svgSrc: "assets/icons/menu_doc.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> Task())
                   );
              },
            ),
            DrawerListTile( // Changed from DrawerListView
              title: "Store",
              svgSrc: "assets/icons/menu_store.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> Store())
                   );
              },
            ),
            DrawerListTile( // Changed from DrawerListView
              title: "Notification",
              svgSrc: "assets/icons/menu_notification.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> Task())
                   );
              },
            ),
            DrawerListTile( // Changed from DrawerListView
              title: "Profile",
              svgSrc: "assets/icons/menu_profile.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> Profile())
                   );
              },
            ),
            DrawerListTile( // Changed from DrawerListView
              title: "Settings",
              svgSrc: "assets/icons/menu_setting.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> Settings())
                   );
              },
            ),
            
              
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget { // Changed class name
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
