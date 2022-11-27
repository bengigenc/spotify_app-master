import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key});

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(right: 6.w, top: 11.h),
      padding: EdgeInsets.only(left: 6.w),
        decoration: BoxDecoration(
            color: Color(0xff42C83C), borderRadius: BorderRadius.circular(22.sp)),
        height: 15.h,
        width: 100.w,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "New Album",
                  style: Theme.of(context).textTheme.headline5?.copyWith(fontSize:10,color: Color(0xffFBFBFB) ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Happier Than",
                       style: Theme.of(context).textTheme.headline6?.copyWith(color: Color(0xffFBFBFB))),
                    Text("Ever",
                       style: Theme.of(context).textTheme.headline6?.copyWith(color: Color(0xffFBFBFB))),
                  ],
                ),
                Text(
                  "Billie Ellish",
                  style: Theme.of(context).textTheme.headline5?.copyWith(fontSize:10, color: Color(0xffFBFBFB) ),
                )
              ],
            ),
            
          ],
        ),
      )
    ;
  }
}

