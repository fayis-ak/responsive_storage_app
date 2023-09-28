import 'package:flutter/material.dart';
import 'package:responsive_desaign/responsive.dart';
import 'package:responsive_desaign/responsive/main_screen.dart';

class Notificationscreen extends StatelessWidget {
  const Notificationscreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: Sidemenu(context),
       body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isDesktop(context))
            Expanded(
              child:Container(
                child: Sidemenu(context)
                ), 
            ),
            Expanded(
              flex: 5,
              child: Center(child: Text('Notification')),
            )
          ],
        )
        ),
    );
 
    
  }
}
