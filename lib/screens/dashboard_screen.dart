import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:responsive_desaign/constants.dart';

import 'package:responsive_desaign/models/RecentFile.dart';
import 'package:responsive_desaign/responsive.dart';
import 'package:responsive_desaign/screens/dashboard/components/my_fiels.dart';
import 'package:responsive_desaign/screens/dashboard/components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> pieChartData = [
      PieChartSectionData(
        color: primaryColor,
        value: 25,
        showTitle: false,
        radius: 25,
      ),
      PieChartSectionData(
        color: const Color(0xFF26E5FF),
        value: 25,
        showTitle: false,
        radius: 25,
      ),
      PieChartSectionData(
        color: const Color(0xFFFFCF26),
        value: 10,
        showTitle: false,
        radius: 25,
      ),
      PieChartSectionData(
        color: const Color(0xFFEE2727),
        value: 15,
        showTitle: false,
        radius: 25,
      ),
      PieChartSectionData(
        color: primaryColor.withOpacity(0.1),
        value: 25,
        showTitle: false,
        radius: 13,
      ),
    ];

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defultPadding),
        child: Column(
          children: [
            Row(
              children: [
               if(!Responsive.isDesktop(context)) 
               IconButton(
                onPressed: (){
                  Scaffold.of(context).openDrawer();
                },
                  // onPressed: context.read<MenuController>().controlMenu,
                   icon: Icon(Icons.menu)),
                   if(!Responsive.ismobile(context))
                Text(
                  'Dashboard',
                  style: Theme.of(context).textTheme.headline6,
                ),
               if(!Responsive.ismobile(context))
                Spacer(flex:Responsive.isDesktop(context)? 2:1),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      fillColor: secondaryColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      suffixIcon: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(defultPadding * 0.75),
                          margin: EdgeInsets.symmetric(
                              horizontal: defultPadding / 2),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: SvgPicture.asset('assets/icons/Search.svg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: defultPadding),
                  padding: EdgeInsets.symmetric(
                    horizontal: defultPadding,
                    vertical: defultPadding / 2,
                  ),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.white10),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/profile_pic.png",
                        height: 38,
                      ),
                      if(!Responsive.ismobile(context))
                     const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: defultPadding / 2),
                        child: Text('Angelina Jolie'),
                      ),
                     const Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: defultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                       const MyFiels(),
                       const SizedBox(
                          height: defultPadding,
                        ),
                        RecentFile(context),
                        if (Responsive.ismobile(context))
                          const  SizedBox(height: defultPadding),
                        if (Responsive.ismobile(context))
                          StarageDetails(pieChartData: pieChartData),
                      ],
                    )),
                if (!Responsive.ismobile(context))
                 const SizedBox(width: defultPadding),
                if (!Responsive.ismobile(context))
                  Expanded(
                    flex: 2,
                    child: StarageDetails(pieChartData: pieChartData),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container RecentFile(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Files',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: defultPadding,
              columns: [
                DataColumn(
                  label: Text('File Name'),
                ),
                DataColumn(
                  label: Text('Date'),
                ),
                DataColumn(
                  label: Text('Size'),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          )
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(cells: [
    DataCell(
      Row(
        children: [
          SvgPicture.asset(
            fileInfo.icon,
            height: 30,
            width: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defultPadding),
            child: Text(fileInfo.title),
          ),
        ],
      ),
    ),
    DataCell(Text(fileInfo.date)),
    DataCell(Text(fileInfo.size)),
  ]);
}
