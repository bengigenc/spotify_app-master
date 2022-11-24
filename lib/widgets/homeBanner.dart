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
      padding: EdgeInsets.only(left: 6.w),
        decoration: BoxDecoration(
            color: Color(0xff42C83C), borderRadius: BorderRadius.circular(20.sp)),
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
                  style: BannerTextstyle.AlbumStyle,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Happier Than",
                       style: BannerTextStyleBig.SongStyle),
                    Text("Ever",
                       style: BannerTextStyleBig.SongStyle),
                  ],
                ),
                Text(
                  "Billie Ellish",
                  style: BannerTextstyle.AlbumStyle,
                )
              ],
            ),
            Container(
            
            
              margin: EdgeInsets.only(left: 25.w,),
              child: Image.asset("assets/images/billie.png"),)
          ],
        ),
      )
    ;
  }
}

class BannerTextstyle {
  static TextStyle AlbumStyle =
      TextStyle(color: Color(0xffFBFBFB), fontSize: 10);
}

class BannerTextStyleBig {
  static TextStyle SongStyle = TextStyle(
      color: Color(0xffFBFBFB), fontSize: 19, fontWeight: FontWeight.bold);
}
