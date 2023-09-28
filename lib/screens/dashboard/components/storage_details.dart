import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_desaign/constants.dart';
import 'package:responsive_desaign/screens/dashboard/storage_info_card.dart';

class StarageDetails extends StatelessWidget {
  const StarageDetails({
    super.key,
    required this.pieChartData,
  });

  final List<PieChartSectionData> pieChartData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                PieChart(
                  PieChartData(
                    sectionsSpace: 0,
                    startDegreeOffset: -90,
                    sections: pieChartData,
                  ),
                ),
                Positioned.fill(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: defultPadding,
                      ),
                      Text(
                        '29.1',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                height: 0.5),
                      ),
                      const Text("of 128GB")
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Strorageinfocard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Document Files",
            amountofFiles: "1.3GB",
            numofFiles: 1328,
          ),
          const Strorageinfocard(
            svgSrc: "assets/icons/media.svg",
            title: "Media Files",
            amountofFiles: "15.3GB",
            numofFiles: 1328,
          ),
          const Strorageinfocard(
            svgSrc: "assets/icons/folder.svg",
            title: "other Files",
            amountofFiles: "1.3GB",
            numofFiles: 1328,
          ),
          const Strorageinfocard(
            svgSrc: "assets/icons/unknown.svg",
            title: "unknown",
            amountofFiles: "1.3GB",
            numofFiles: 140,
          ),
        ],
      ),
    );
  }
}
