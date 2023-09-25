import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:responsive_desaign/responsive.dart';
import 'package:responsive_desaign/screens/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: context.read<MenuController>().scaffoldKey,
      drawer: Sidemenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isDesktop(context)) 
            Expanded(
              child: Container(
                child: Sidemenu(),
              )
              ),
            Expanded(
              flex: 5,
              child: DashboardScreen()
              ), 
             
          ],
        )),
    );
  }

  Drawer Sidemenu() {
    return Drawer(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      DrawerHeader(
                        child:  Image.asset('assets/images/logo.png'),
                        ),
                        DrawerListView(
                          title: "Dashbord",
                          svgSrc: "assets/icons/menu_dashbord.svg",
                          press: (){},
                          ),
                        DrawerListView(
                          title: "Transaction",
                          svgSrc: "assets/icons/menu_tran.svg",
                          press: (){},
                          ),
                         DrawerListView(
                          title: "Task",
                          svgSrc: "assets/icons/menu_task.svg",
                          press: (){},
                          ),

                           DrawerListView(
                          title: "Documents",
                          svgSrc: "assets/icons/menu_doc.svg",
                          press: (){},
                          ),

                           DrawerListView(
                          title: "Store",
                          svgSrc:"assets/icons/menu_store.svg",
                          press: (){},
                          ),

                           DrawerListView(
                          title: "Notification",
                          svgSrc: "assets/icons/menu_notification.svg",
                          press: (){},
                          ),

                           DrawerListView(
                          title: "Profile",
                          svgSrc: "assets/icons/menu_profile.svg",
                          press: (){},
                          ),

                           DrawerListView(
                          title: "Settings",
                          svgSrc: "assets/icons/menu_setting.svg",
                          press: (){},
                          ),
                          
                        
                        ],
                        
                  ),

                ),
                
              );
  }
}

class DrawerListView extends StatelessWidget {
  const DrawerListView({
    Key? key,
     required this.title,
     required this.svgSrc,
      required this.press,
  }):super(key: key);

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
        style: TextStyle(color: Colors.white54),),
    );
  }
}