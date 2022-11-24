import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PlayList extends StatefulWidget {
  const PlayList({super.key, required this.list_song, required this.list_artist, required this.time, required this.index});

final String list_song;
final String list_artist;
final String time;
final int index;

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
                  widget.list_song,
                  style: BannerTextStyleBig.SongStyle,
                ),
                Text(
                  widget.list_artist,
                  style: BannerTextstyle.AlbumStyle,
                )
              ],
            ),
            Text(widget.time, style: BannerTextStyleBig.SongStyle,),
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
