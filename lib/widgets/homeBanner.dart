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
        decoration: BoxDecoration(
            color: Color(0xff42C83C), borderRadius: BorderRadius.circular(20)),
        height: 15.h,
        width: 90.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "New Album",
              style: BannerTextstyle.AlbumStyle,
            ),
            Text("Happier Than Ever",
               style: BannerTextStyleBig.SongStyle),
            Text(
              "Billie Ellish",
              style: BannerTextstyle.AlbumStyle,
            )
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
