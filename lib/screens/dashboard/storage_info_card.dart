import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_desaign/constants.dart';

class Strorageinfocard extends StatelessWidget {
  const Strorageinfocard({
    super.key,
     required this.title,
      required this.svgSrc,
       required this.amountofFiles,
        required this.numofFiles,
  });

  final String title,svgSrc, amountofFiles;
  final int numofFiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defultPadding),
      padding: EdgeInsets.all(defultPadding),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: primaryColor.withOpacity(0.15)),
          borderRadius: const BorderRadius.all(
            Radius.circular(defultPadding),),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(svgSrc),
            ),
            Expanded(
              child: Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: defultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '$numofFiles Files',
                    style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.white70),
                    ),

                ],
                ),
              ),
              ),
              Text(amountofFiles)

        ],
      ),
    );
  }
}