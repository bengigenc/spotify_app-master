import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PlayList extends StatefulWidget {
  const PlayList({super.key});

  @override
  State<PlayList> createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 5.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Image.asset("assets/images/play.png"),
            ),
            Column(
              children: [
                Text(
                  "As It Was",
                  style: BannerTextStyleBig.SongStyle,
                ),
                Text(
                  "Harry Styles",
                  style: BannerTextstyle.AlbumStyle,
                )
              ],
            ),
            Text("5:33", style: BannerTextStyleBig.SongStyle,),
            Icon(Icons.favorite, color: Color(0xffB4B4B4),)
          ],
        ),
      )
    ;
  }
}

class BannerTextstyle {
  static TextStyle AlbumStyle =
      TextStyle(color: Color(0xff000000), fontSize: 10);
}

class BannerTextStyleBig {
  static TextStyle SongStyle = TextStyle(
      color: Color(0xff000000), fontSize: 19, fontWeight: FontWeight.bold);
}
