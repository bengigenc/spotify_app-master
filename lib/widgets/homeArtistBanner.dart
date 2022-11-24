import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeArtistBanner extends StatefulWidget {
  const HomeArtistBanner({super.key, required this.resimurl, required this.song, required this.artistname, required this.index, required this.iconurl});

  final String resimurl;
  final String iconurl;
  final String song;
  final String artistname;
  final int index;

  @override
  State<HomeArtistBanner> createState() => _HomeArtistBannerState();
}

class _HomeArtistBannerState extends State<HomeArtistBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 3.w),
        child: Column(
          children: [
            Stack(
              
              children:[Container(
                
                height: 21.h,
                width: 31.w,
                child: Image.asset(widget.resimurl),

              ),
              Container(
                height: 4.h,
            margin: EdgeInsets.only(top: 18.h, left: 20.w),
                child: Image.asset(widget.iconurl),
              )
              ] 
            ),
            Text(widget.song, textAlign: TextAlign.left,style: BannerTextStyleBig.SongStyle,),
            Text(widget.artistname, textAlign: TextAlign.left,style: BannerTextstyle.AlbumStyle,),


          ],
        ),
      )
    ;
  }
}

class BannerTextstyle {
  static TextStyle AlbumStyle =
      TextStyle(color: Color(0xff000000), fontSize: 14);
}

class BannerTextStyleBig {
  static TextStyle SongStyle = TextStyle(
      color: Color(0xff000000), fontSize: 16, fontWeight: FontWeight.bold);
}
