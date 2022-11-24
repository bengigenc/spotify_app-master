import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_app/widgets/homeArtistBanner.dart';
import 'package:spotify_app/widgets/homeBanner.dart';
import 'package:spotify_app/widgets/homeListText.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  List<Map<String, String>> categori = [
    {
      "image": "assets/images/artsist.png",
      "icon": "assets/images/play.png",
      "song": "Bad Guy",
      "artist": "Billie Ellish"
    },
    {
      "image": "assets/images/artsist.png",
      "icon": "assets/images/play.png",
      "song": "Scorpion",
      "artist": "Drake"
    },
    {
      "image": "assets/images/artsist.png",
      "icon": "assets/images/play.png",
      "song": "WHEN WE...",
      "artist": "Billie Ellish"
    },
    {
      "image": "assets/images/artsist.png",
      "icon": "assets/images/play.png",
      "song": "WHEN WE...",
      "artist": "Billie Ellish"
    },
    {
      "image": "assets/images/artsist.png",
      "icon": "assets/images/play.png",
      "song": "WHEN WE...",
      "artist": "Billie Ellish"
    },
  ];

  List<Map<String, String>> playlist_song = [
    {
      "playlist_song": "As It Was",
      "playlist_artist": "Billie Eilish",
      "duration": "5:33"
    },
    {
      "playlist_song": "As It Was",
      "playlist_artist": "Billie Eilish",
      "duration": "5:33"
    },
    {
      "playlist_song": "As It Was",
      "playlist_artist": "Billie Eilish",
      "duration": "5:33"
    },
    {
      "playlist_song": "As It Was",
      "playlist_artist": "Billie Eilish",
      "duration": "5:33"
    },
    {
      "playlist_song": "As It Was",
      "playlist_artist": "Billie Eilish",
      "duration": "5:33"
    },
    {
      "playlist_song": "As It Was",
      "playlist_artist": "Billie Eilish",
      "duration": "5:33"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(1.h),
        child: Column(children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search),
                Container(
                  height: 7.h,
                  width: 30.w,
                  child: Image.asset("assets/images/spotifylogo.png"),
                ),
                Icon(Icons.menu)
              ],
            ),
          ),
          HomeBanner(),
          HomeListText(),
          Container(
            child: SizedBox(
              height: 30.h,
              width: 100.w,
              child: ListView.builder(
                itemCount: categori.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return HomeArtistBanner(
                      resimurl: categori[index]["image"].toString(),
                      song: categori[index]["song"].toString(),
                      artistname: categori[index]["artist"].toString(),
                      index: index,
                      iconurl: categori[index]["icon"].toString());
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Playlist",
                style: BannerTextStyleBig.SongStyle,
              ),
            ],
          ),

          Container(

            // burada kaldım. LİSTEYİ TAMAMLA.
          )
        ]),
      ),
    );
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
