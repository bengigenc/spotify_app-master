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
      "icon":"assets/images/play.png",
      "song": "Bad Guy",
      "artist": "Billie Ellish"
    },
     {
      "image": "assets/images/artsist.png",
      "icon":"assets/images/play.png",
      "song": "Scorpion",
      "artist": "Drake"
    },
     {
      "image": "assets/images/artsist.png",
      "icon":"assets/images/play.png",
      "song": "WHEN WE...",
      "artist": "Billie Ellish"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          width: 700,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.search),
              Container(
                height: 35,
                width: 208,
                child: Image.asset("assets/images/spotifylogo.png"),
              ),
              Icon(Icons.menu)
            ],
          ),
        ),
        HomeBanner(),
        HomeListText(),
Container(child: SizedBox(height: 31.h,
child: ListView.builder(itemCount: categori.length,scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
  return HomeArtistBanner(resimurl: categori[index]["image"].toString(),
   song: categori[index]["song"].toString(),
    artistname: categori[index]["artist"].toString(), index: index, 
    iconurl: categori[index]["icon"].toString());
},),),),
Row(children: [
  Text("Playlist"),
  Text("See More"),
  Text(""),
      ],)]
    ));
  }
}
