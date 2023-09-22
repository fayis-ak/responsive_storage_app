import 'package:flutter/material.dart';
import 'package:responsive_desaign/constants.dart';

class CloudStorageInfo{
 
 
  final String svgSrc,title,totalStrorage;
  final int numofFiles,percentage;
  final Color color;

  CloudStorageInfo({required this.svgSrc, required this.title, required this.totalStrorage, required this.numofFiles, required this.percentage, required this.color});

 
  
}

List demoMyfiels = [
  CloudStorageInfo(
    svgSrc: "assets/icons/Documents.svg",
     title: "Documents",
      totalStrorage: "1.9GB", 
      numofFiles: 1328,
       percentage: 35,
        color: primaryColor),

        CloudStorageInfo(
          svgSrc: "assets/icons/google_drive.svg",
         title: "Google Drive",
          totalStrorage: "2.9GB",
           numofFiles: 1328,
            percentage: 35,
             color: const Color.fromARGB(134, 255, 235, 59)),

             CloudStorageInfo(
          svgSrc: "assets/icons/one_drive.svg",
         title: "One Drive",
          totalStrorage: "1GB",
           numofFiles: 1328,
            percentage: 10,
             color: const Color.fromARGB(87, 244, 67, 54)),

             CloudStorageInfo(
          svgSrc: "assets/icons/menu_doc.svg",
         title: "Document",
          totalStrorage: "7.3GB",
           numofFiles: 5328,
            percentage: 35,
             color: primaryColor),

];