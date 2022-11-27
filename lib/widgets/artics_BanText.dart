import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ArticsBannerText extends StatefulWidget {
  const ArticsBannerText({super.key});

  @override
  State<ArticsBannerText> createState() => _ArticsBannerTextState();
}

class _ArticsBannerTextState extends State<ArticsBannerText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 2.h),
      height: 16.h,
      width: 90.w,
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Billie Eilish",
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Text("2 Album . 67 Track",
              style: Theme.of(context).textTheme.bodyText1),
          Container(
              alignment: Alignment.center,
              child: Text(
                "Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Turpis Adipiscing Vestibulum Orci Enim, Nascetur Vitae.",style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.grey.shade500),
                maxLines: 3,
              )),
        ],
      ),
    );
  }
}
