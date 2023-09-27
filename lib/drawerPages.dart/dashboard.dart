import 'package:flutter/material.dart';
import 'package:responsive_desaign/constants.dart';
import 'package:responsive_desaign/models/MyFiles.dart';
import 'package:responsive_desaign/responsive.dart';

import '../screens/dashboard/components/file_info-card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Files',
              style: Theme.of(context).textTheme.bodyMedium,
              ),
              ElevatedButton.icon(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: defultPadding *1.5, 
                    vertical: defultPadding,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    backgroundColor: primaryColor,
                    ),
                onPressed: (){},
                 icon:const Icon(Icons.add,
                 color: Colors.white,
                 ),
                  label:const Text(
                    'Add New',
                    style: TextStyle(color: Colors.white),
                    ),
                  ),     
          ],
        ),
           const  SizedBox(height: defultPadding,),
              Responsive(
                mobile:  FileInfoCardGridView(
                  crossAxisCount: _size.width < 650 ? 2: 4,
                  childAspectRatio: _size.width < 650 ? 1.3 :1,
                  ),
               desktop: FileInfoCardGridView(
                childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
                ),
               tablet: FileInfoCardGridView(
                crossAxisCount: _size.width < 1024 ? 2:3 ,
                childAspectRatio: 1.2,
               ),
               ),   
          ],  
          ),
      ),
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    super.key, 
     this.crossAxisCount =4, 
     this.childAspectRatio =1,
  });

  final int  crossAxisCount ;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics:const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyfiels.length,
      gridDelegate: 
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount ,
        crossAxisSpacing: defultPadding,
        mainAxisSpacing: defultPadding,
        childAspectRatio: childAspectRatio,
        ),
       itemBuilder: (context , index)=>
       FileInfoCard(info: demoMyfiels[index],),
       );
  }
}




