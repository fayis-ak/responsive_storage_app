import 'package:flutter/material.dart';
import 'package:responsive_desaign/constants.dart';
import 'package:responsive_desaign/drawerPages.dart/documents.dart';
import 'package:responsive_desaign/drawerPages.dart/profile.dart';
import 'package:responsive_desaign/drawerPages.dart/settings.dart';
import 'package:responsive_desaign/drawerPages.dart/store.dart';
import 'package:responsive_desaign/drawerPages.dart/task.dart';
import 'package:responsive_desaign/drawerPages.dart/transaction.dart';

import 'package:responsive_desaign/responsive.dart';
import 'package:responsive_desaign/responsive/main_screen.dart';

class Notificationscreen extends StatefulWidget {
  late String selectedDrawerItem = "Notification";

  @override
  State<Notificationscreen> createState() => _TransactionContentState();
}

class _TransactionContentState extends State<Notificationscreen> {
  late String selectedDrawerItem = "Notification";

  void setSelected(String itemname) {
    setState(() {
      selectedDrawerItem = itemname;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidemenu(context, selectedDrawerItem, setSelected),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: Container(
                    child: Sidemenu(context, selectedDrawerItem, setSelected)),
              ),
            Expanded(
                flex: 5,
                child: SafeArea(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(defultPadding),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            if (!Responsive.isDesktop(context))
                              IconButton(
                                onPressed: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                icon: const Icon(Icons.menu),
                              ),
                            if (!Responsive.ismobile(context))
                              const Center(
                                child: Text(
                                  'Notification',
                                  style: TextStyle(
                                      fontSize: 50, color: Colors.deepOrange),
                                ),
                              ),
                            if (!Responsive.ismobile(context))
                              Spacer(
                                  flex: Responsive.isDesktop(context) ? 2 : 1),
                          ],
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class Sidemenu extends StatelessWidget {
  final BuildContext context;
  final String selectedDrawerItem;
  final Function(String) onItemSelected;

  Sidemenu(this.context, this.selectedDrawerItem, this.onItemSelected);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (!Responsive.isDesktop(context))
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.navigate_before,
                        size: 50,
                      )),
              ],
            ),
            DrawerHeader(
              child: Image.asset('assets/images/logo.png'),
            ),
            DrawerListTile(
              title: "Dashboard",
              svgSrc: "assets/icons/menu_dashbord.svg",
              isSelected: selectedDrawerItem == "Dashboard",
              press: () {
                onItemSelected("Dashboard");
                setSelected("Dashboard");
              },
              onSelected: (title) {
                setSelected(title);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainScreen()));
              },
            ),
            DrawerListTile(
              // Changed from DrawerListView
              title: "Transaction",
              svgSrc: "assets/icons/menu_tran.svg",
              isSelected: selectedDrawerItem == "Transaction",
              press: () {
                onItemSelected("Transaction");
                setSelected("Transaction");
              },

              onSelected: (title) {
                setSelected(title);
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        TransactionContent(),
                    transitionsBuilder:
                        (context, animation1, animation2, child) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: Offset(0, 0), // Starting position (off-screen to the right)
                          end: Offset
                              .zero, // Ending position (center of the screen)
                        ).animate(animation1),
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 500),
                  ),
                );
              },
            ),
            DrawerListTile(
              // Changed from DrawerListView
              title: "Task",
              svgSrc: "assets/icons/menu_task.svg",
              press: () {
                onItemSelected("Task");
                setSelected("Task");
              },
              isSelected: selectedDrawerItem == "Task",
              onSelected: (title) {
                setSelected(title);
               Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        Task(),
                    transitionsBuilder:
                        (context, animation1, animation2, child) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: Offset(0, 0), // Starting position (off-screen to the right)
                          end: Offset
                              .zero, // Ending position (center of the screen)
                        ).animate(animation1),
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 500),
                  ),
                );
              },
            ),
            DrawerListTile(
              // Changed from DrawerListView
              title: "Documents",
              svgSrc: "assets/icons/menu_doc.svg",
              press: () {
                onItemSelected("Documents");
              },
              isSelected: selectedDrawerItem == "Documents",
              onSelected: (title) {
                setSelected(title);
               Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        Documentsscreen(),
                    transitionsBuilder:
                        (context, animation1, animation2, child) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: Offset(0, 0), // Starting position (off-screen to the right)
                          end: Offset
                              .zero, // Ending position (center of the screen)
                        ).animate(animation1),
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 500),
                  ),
                );
              },
            ),
            DrawerListTile(
              // Changed from DrawerListView
              title: "Store",
              svgSrc: "assets/icons/menu_store.svg",
              press: () {
                onItemSelected("Store");
                setSelected("Store");
              },
              isSelected: selectedDrawerItem == "Store",
              onSelected: (title) {
                setSelected(title);
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        Storescrren(),
                    transitionsBuilder:
                        (context, animation1, animation2, child) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: Offset(0, 0), // Starting position (off-screen to the right)
                          end: Offset
                              .zero, // Ending position (center of the screen)
                        ).animate(animation1),
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 500),
                  ),
                );
              },
            ),
            DrawerListTile(
              // Changed from DrawerListView
              title: "Notification",
              svgSrc: "assets/icons/menu_notification.svg",
              press: () {
                onItemSelected("Notification");
                setSelected("Notification");
              },
              isSelected: selectedDrawerItem == "Notification",
              onSelected: (title) {
                setSelected(title);
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        Notificationscreen(),
                    transitionsBuilder:
                        (context, animation1, animation2, child) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: Offset(0, 0), // Starting position (off-screen to the right)
                          end: Offset
                              .zero, // Ending position (center of the screen)
                        ).animate(animation1),
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 500),
                  ),
                );
              },
            ),
            DrawerListTile(
              // Changed from DrawerListView
              title: "Profile",
              svgSrc: "assets/icons/menu_profile.svg",
              press: () {
                onItemSelected("Profile");
                setSelected("Profile");
              },
              isSelected: selectedDrawerItem == "Profile",
              onSelected: (title) {
                setSelected(title);
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        Profile(),
                    transitionsBuilder:
                        (context, animation1, animation2, child) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: Offset(0, 0), // Starting position (off-screen to the right)
                          end: Offset
                              .zero, // Ending position (center of the screen)
                        ).animate(animation1),
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 500),
                  ),
                );
              },
            ),
            DrawerListTile(
              // Changed from DrawerListView
              title: "Settings",
              svgSrc: "assets/icons/menu_setting.svg",
              press: () {
                onItemSelected("Settings");
                setSelected("Settings");
              },
              isSelected: selectedDrawerItem == "Settings",
              onSelected: (title) {
                setSelected(title);
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        Settingsscreen(),
                    transitionsBuilder:
                        (context, animation1, animation2, child) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: Offset(0, 0), // Starting position (off-screen to the right)
                          end: Offset
                              .zero, // Ending position (center of the screen)
                        ).animate(animation1),
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 500),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void setSelected(String s) {}
}
